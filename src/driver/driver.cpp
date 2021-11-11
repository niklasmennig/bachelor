#include <memory>
#include <sstream>
#include <algorithm>
#include <string>
#include <cstring>
#include <chrono>
#include <cmath>
#include <fstream>

#ifndef DISABLE_GUI
#include <SDL.h>
#endif

#include "interface.h"
#include "float3.h"
#include "common.h"
#include "image.h"



//#define TESTING
//#define TEST_BRDF_EVAL
//#define TEST_BRDF_WRITE_READ

//using namespace powitacq_rgb;

#if defined(__x86_64__) || defined(__amd64__) || defined(_M_X64)
#include <x86intrin.h>
#endif

static constexpr float pi = 3.14159265359f;

struct Camera {
    float3 eye;
    float3 dir;
    float3 right;
    float3 up;
    float w, h;

    Camera(const float3& e, const float3& d, const float3& u, float fov, float ratio) {
        eye = e;
        dir = normalize(d);
        right = normalize(cross(dir, u));
        up = normalize(cross(right, dir));

        w = std::tan(fov * pi / 360.0f);
        h = w / ratio;
    }

    void rotate(float yaw, float pitch) {
        dir = ::rotate(dir, right,  -pitch);
        dir = ::rotate(dir, up,     -yaw);
        dir = normalize(dir);
        right = normalize(cross(dir, up));
        up = normalize(cross(right, dir));
    }

    void move(float x, float y, float z) {
        eye += right * x + up * y + dir * z;
    }
};

void setup_interface(size_t, size_t);
float* get_pixels();
void clear_pixels();
void cleanup_interface();

#ifndef DISABLE_GUI
static bool handle_events(uint32_t& iter, Camera& cam) {
    static bool camera_on = false;
    static bool arrows[4] = { false, false, false, false };
    static bool speed[2] = { false, false };
    const float rspeed = 0.005f;
    static float tspeed = 0.1f;

    SDL_Event event;
    while (SDL_PollEvent(&event)) {
        bool key_down = event.type == SDL_KEYDOWN;
        switch (event.type) {
            case SDL_KEYUP:
            case SDL_KEYDOWN:
                switch (event.key.keysym.sym) {
                    case SDLK_ESCAPE:   return true;
                    case SDLK_KP_PLUS:  speed[0] = key_down; break;
                    case SDLK_KP_MINUS: speed[1] = key_down; break;
                    case SDLK_UP:       arrows[0] = key_down; break;
                    case SDLK_DOWN:     arrows[1] = key_down; break;
                    case SDLK_LEFT:     arrows[2] = key_down; break;
                    case SDLK_RIGHT:    arrows[3] = key_down; break;
                }
                break;
            case SDL_MOUSEBUTTONDOWN:
                if (event.button.button == SDL_BUTTON_LEFT) {
                    SDL_SetRelativeMouseMode(SDL_TRUE);
                    camera_on = true;
                }
                break;
            case SDL_MOUSEBUTTONUP:
                if (event.button.button == SDL_BUTTON_LEFT) {
                    SDL_SetRelativeMouseMode(SDL_FALSE);
                    camera_on = false;
                }
                break;
            case SDL_MOUSEMOTION:
                if (camera_on) {
                    cam.rotate(event.motion.xrel * rspeed, event.motion.yrel * rspeed);
                    iter = 0;
                }
                break;
            case SDL_QUIT:
                return true;
            default:
                break;
        }
    }

    if (arrows[0]) cam.move(0, 0,  tspeed);
    if (arrows[1]) cam.move(0, 0, -tspeed);
    if (arrows[2]) cam.move(-tspeed, 0, 0);
    if (arrows[3]) cam.move( tspeed, 0, 0);
    if (arrows[0] | arrows[1] | arrows[2] | arrows[3]) iter = 0;
    if (speed[0]) tspeed *= 1.1f;
    if (speed[1]) tspeed *= 0.9f;
    return false;
}

static void update_texture(uint32_t* buf, SDL_Texture* texture, size_t width, size_t height, uint32_t iter) {
    auto film = get_pixels();
    auto inv_iter = 1.0f / iter;
    auto inv_gamma = 1.0f / 2.2f;
    for (size_t y = 0; y < height; ++y) {
        for (size_t x = 0; x < width; ++x) {
            auto r = film[(y * width + x) * 3 + 0];
            auto g = film[(y * width + x) * 3 + 1];
            auto b = film[(y * width + x) * 3 + 2];

            buf[y * width + x] =
                (uint32_t(clamp(std::pow(r * inv_iter, inv_gamma), 0.0f, 1.0f) * 255.0f) << 16) |
                (uint32_t(clamp(std::pow(g * inv_iter, inv_gamma), 0.0f, 1.0f) * 255.0f) << 8)  |
                 uint32_t(clamp(std::pow(b * inv_iter, inv_gamma), 0.0f, 1.0f) * 255.0f);
        }
    }
    SDL_UpdateTexture(texture, nullptr, buf, width * sizeof(uint32_t));
}
#endif



static void write_pfm_image(const float* data, int iterations, int width, int height, int numChannels, const char* filename) {
    std::ofstream out(filename, std::ios_base::binary);

    std::ostringstream str;
    if (numChannels == 1)
        str << "Pf\n";
    else if (numChannels == 3)
        str << "PF\n";
    else {
        std::cerr << "ERROR: .pfm format does not support " << numChannels << " channel images" << std::endl;
        return;
    }
    str << width << " " << height << "\n";
    str << "-1.0" << "\n";
    auto header = str.str();

    out << header;

    for (int row = height - 1; row >= 0; --row) {
        for (int col = 0; col < width; col++) {
            for (int channel = 0; channel < numChannels; channel++) {
                float val = data[row * width * numChannels + col * numChannels + channel] / iterations;
                out.write((const char*)&val, sizeof(float));
            }
        }
    }
}

static void save_image(const std::string& out_file, size_t width, size_t height, uint32_t iter) {
    ImageRgba32 img;
    img.width = width;
    img.height = height;
    img.pixels.reset(new uint8_t[width * height * 4]);

    auto film = get_pixels();

    std::string pfm_ending = ".pfm";
    if (out_file.compare(out_file.length() - pfm_ending.length(), pfm_ending.length(), pfm_ending) == 0) {
        printf("saving as pfm file\n");
        write_pfm_image(film, iter, width, height, 3, out_file.c_str());
        return;
    }

    auto inv_iter = 1.0f / iter;
    auto inv_gamma = 1.0f / 2.2f;
    for (size_t y = 0; y < height; ++y) {
        for (size_t x = 0; x < width; ++x) {
            auto r = film[(y * width + x) * 3 + 0];
            auto g = film[(y * width + x) * 3 + 1];
            auto b = film[(y * width + x) * 3 + 2];

            img.pixels[4 * (y * width + x) + 0] = clamp(std::pow(r * inv_iter, inv_gamma), 0.0f, 1.0f) * 255.0f;
            img.pixels[4 * (y * width + x) + 1] = clamp(std::pow(g * inv_iter, inv_gamma), 0.0f, 1.0f) * 255.0f;
            img.pixels[4 * (y * width + x) + 2] = clamp(std::pow(b * inv_iter, inv_gamma), 0.0f, 1.0f) * 255.0f;
            img.pixels[4 * (y * width + x) + 3] = 255;
        }
    }

    if (!save_png(out_file, img))
        error("Failed to save PNG file '", out_file, "'");
}

static inline void check_arg(int argc, char** argv, int arg, int n) {
    if (arg + n >= argc)
        error("Option '", argv[arg], "' expects ", n, " arguments, got ", argc - arg);
}

static inline void usage() {
    std::cout << "Usage: rodent [options]\n"
              << "Available options:\n"
              << "   --help              Shows this message\n"
              << "   --width  pixels     Sets the viewport horizontal dimension (in pixels)\n"
              << "   --height pixels     Sets the viewport vertical dimension (in pixels)\n"
              << "   --eye    x y z      Sets the position of the camera\n"
              << "   --dir    x y z      Sets the direction vector of the camera\n"
              << "   --up     x y z      Sets the up vector of the camera\n"
              << "   --fov    degrees    Sets the horizontal field of view (in degrees)\n"
              << "   --bench  iterations Enables benchmarking mode and sets the number of iterations\n"
              << "   -o       image.png  Writes the output image to a file" << std::endl;
}



#include <unordered_map>
#include "measured.h"
std::unordered_map<std::string, BRDFData*> brdf_dict;

extern "C" {
    void print_uint(unsigned int u) {
        printf("impala_uint: %u\n", u);
    }

    void print_int(int i) {
        printf("impala_int: %d\n", i);
    }

    void print_float(float f) {
        printf("impala_float: %f\n", f);
    }

    void print_pointer(void* p) {
        printf("impala_pointer: %p\n", p);
    }

    void print_str(char* s) {
        printf("%s\n", s);
    }

    void print_vec2(Vec2* v) {
        printf("impala_vector: (%f/%f)\n", v->x, v->y);
    }

    void print_vec3(Vec3* v) {
        printf("impala_vector: (%f/%f/%f)\n", v->x, v->y, v->z);
    }
}

#ifdef TESTING
int main(int argc, char** argv) {
    std::unique_ptr<powitacq_rgb::BRDF> brdf = std::unique_ptr<powitacq_rgb::BRDF>( new powitacq_rgb::BRDF("data/acrylic_felt_green_rgb.bsdf") );

    powitacq_rgb::BRDF* _brdf = brdf.get();
    BRDFData* converted_brdf = convert_brdf(_brdf);

    const Warp* converted_rgb = converted_brdf->rgb;
    const Warp* converted_luminance = converted_brdf->luminance;
    const Warp* converted_sigma = converted_brdf->sigma;

    auto data = brdf->m_data.get();

    auto luminance = data->luminance;
    auto rgb = data->rgb;
    auto sigma = data->sigma;

    float params[] = {0.3f, 0.1f, 1.0f};

    //float ref = rgb.eval(powitacq_rgb::Vector2f(0,0), (float*)&params);
    //printf("evaluated reference: %f\n", ref);

    #ifdef TEST_BRDF_EVAL
    Vec2 pos = Vec2{x : 0, y : 0};
    Vec3 incoming = Vec3{x : 0, y : 0, z : 0};
    Vec3 outgoing = Vec3{x : 0, y : 0, z : 0}; 
    for (int i = 0; i < 10; i++) {
        pos.x = ((float)rand()) / RAND_MAX;
        pos.y = ((float)rand()) / RAND_MAX;

        incoming.x = ((float)rand()) / RAND_MAX;
        incoming.y = ((float)rand()) / RAND_MAX;
        incoming.z = ((float)rand()) / RAND_MAX;

        outgoing.x = ((float)rand()) / RAND_MAX;
        outgoing.y = ((float)rand()) / RAND_MAX;
        outgoing.z = ((float)rand()) / RAND_MAX;

        // warp tests
        /* printf("(%f/%f) -> reference/impala\n", pos.x, pos.y);

        
        float ref_rgb = rgb.eval(powitacq_rgb::Vector2f(pos.x, pos.y), (float*)&params);
        float impala_rgb = eval_warp2D3(converted_rgb, &pos, (float*)&params);
        printf("-RGB: %f / %f\n", ref_rgb, impala_rgb);

        float ref_luminance = luminance.eval(powitacq_rgb::Vector2f(pos.x, pos.y), (float*)&params);
        float impala_luminance = eval_warp2D2(converted_luminance, &pos, (float*)&params);
        printf("-Luminance: %f / %f\n", ref_luminance, impala_luminance);

        float ref_sigma = sigma.eval(powitacq_rgb::Vector2f(pos.x, pos.y), (float*)&params);
        float impala_sigma = eval_warp2D0(converted_sigma, &pos, (float*)&params);
        printf("-Sigma: %f / %f\n", ref_sigma, impala_sigma);

        auto ref_inv = luminance.invert(powitacq_rgb::Vector2f(pos.x, pos.y), (float*)&params);
        InvertResult impala_inv;
        invert_warp2D2(converted_luminance, &pos, (float*)&params, &impala_inv);
        printf("-Inversion:\n");
        printf(" Reference: (%f/%f), %f\n", ref_inv.first.x(), ref_inv.first.y(), ref_inv.second);
        printf(" Impala: (%f/%f), %f\n", impala_inv.sample.x, impala_inv.sample.y, impala_inv.vndf_pdf);

        auto ref_sample = luminance.sample(powitacq_rgb::Vector2f(pos.x, pos.y), (float*)&params);
        SampleResult impala_sample;
        sample_warp2D2(converted_luminance, &pos, (float*)&params, &impala_sample);
        printf("-Sampling:\n");
        printf(" Reference: (%f/%f), %f\n", ref_sample.first.x(), ref_sample.first.y(), ref_sample.second);
        printf(" Impala: (%f/%f), %f\n", impala_sample.sample.x, impala_sample.sample.y, impala_sample.pdf);
        printf("\n");
        */

        
        powitacq_rgb::Vector3f in = powitacq_rgb::Vector3f(incoming.x, incoming.y, incoming.z);
        powitacq_rgb::Vector3f out = powitacq_rgb::Vector3f(outgoing.x, outgoing.y, outgoing.z);
        powitacq_rgb::Vector3f ref_res = _brdf->eval(in, out);

        // BRDF tests
        Vec3* impala_res = new Vec3{x : 0, y : 0, z : 0};
        test_evaluate_brdf(converted_brdf, &incoming, &outgoing, impala_res);
        printf("--BRDF Evaluation--\n");
        printf("Reference: %f/%f/%f\n", ref_res.x(), ref_res.y(), ref_res.z());
        printf("Impala: %f/%f/%f\n", impala_res->x, impala_res->y, impala_res->z);

        float ref_pdf = _brdf->pdf(in, out);
        float impala_pdf = 0.0f;
        test_pdf_brdf(converted_brdf, &incoming, &outgoing, &impala_pdf);
        printf("--BRDF PDF--\n");
        printf("Reference: %f\n", ref_pdf);
        printf("Impala: %f\n", impala_pdf);

        printf("--BRDF Sampling--\n");
        powitacq_rgb::Vector3f sample_ref_out;
        float sample_ref_pdf;
        powitacq_rgb::Vector3f sample_ref = _brdf->sample(powitacq_rgb::Vector2f(pos.x, pos.y), in, &sample_ref_out, &sample_ref_pdf);
        printf(" Reference: \n");
        printf("  Sampled: %f/%f/%f\n", sample_ref.x(), sample_ref.y(), sample_ref.z());
        printf("  Outgoing: %f/%f/%f\n", sample_ref_out.x(), sample_ref_out.y(), sample_ref_out.z());
        printf("  PDF: %f\n", sample_ref_pdf);

        float* param_mem = new float[3];

        printf(" Impala: \n");
        MeasuredBRDFSampleData data;
        test_sample_brdf(converted_brdf, &pos, &incoming, &data);
        printf("  Sampled: %f/%f/%f\n", data.res.x, data.res.y, data.res.z);
        printf("  Outgoing: %f/%f/%f\n", data.out.x, data.out.y, data.out.z);
        printf("  PDF: %f\n", data.pdf);
        printf("\n");
    }
    #endif

    #ifdef TEST_BRDF_WRITE_READ
    std::vector<float> lin_rgb;
    std::ofstream out_brdf;
    out_brdf.open("brdf_out.bin", std::ios::binary);
    write_brdf_data(out_brdf, converted_brdf);
    out_brdf.close();
    std::ifstream in_brdf;
    in_brdf.open("brdf_out.bin", std::ios::binary);
    BRDFData* read_brdf = read_brdf_data(in_brdf);

    printf("Comparing reference and loaded:\n");
    printf("%f,%f / %f,%f\n", converted_brdf->rgb->size.x, converted_brdf->rgb->size.y, read_brdf->rgb->size.x, read_brdf->rgb->size.y);
    printf("%f,%f / %f,%f\n", converted_brdf->rgb->patch_size.x, converted_brdf->rgb->patch_size.y, read_brdf->rgb->patch_size.x, read_brdf->rgb->patch_size.y);
    printf("%f,%f / %f,%f\n", converted_brdf->rgb->inv_patch_size.x, converted_brdf->rgb->inv_patch_size.y, read_brdf->rgb->inv_patch_size.x, read_brdf->rgb->inv_patch_size.y);
    printf("%f / %f\n", converted_brdf->rgb->param_values_offset, read_brdf->rgb->param_values_offset);
    for (int i = 0; i < converted_brdf->rgb->array_sizes[3]; i++) {
        if (converted_brdf->rgb->data[i] != read_brdf->rgb->data[i]) printf("found difference : %f/%f", converted_brdf->rgb->data[i], read_brdf->rgb->data[i]);
    }
    #endif

    return 0;
}
#endif

#ifndef TESTING
int main(int argc, char** argv) {
    std::string out_file;
    size_t bench_iter = 0;
    size_t width  = 1080;
    size_t height = 720;
    float fov = 60.0f;
    float3 eye(0.0f), dir(0.0f, 0.0f, 1.0f), up(0.0f, 1.0f, 0.0f);

    printf("Test\n");

    for (int i = 1; i < argc; ++i) {
        if (argv[i][0] == '-') {
            if (!strcmp(argv[i], "--width")) {
                check_arg(argc, argv, i, 1);
                width = strtoul(argv[++i], nullptr, 10);
            } else if (!strcmp(argv[i], "--height")) {
                check_arg(argc, argv, i, 1);
                height = strtoul(argv[++i], nullptr, 10);
            } else if (!strcmp(argv[i], "--eye")) {
                check_arg(argc, argv, i, 3);
                eye.x = strtof(argv[++i], nullptr);
                eye.y = strtof(argv[++i], nullptr);
                eye.z = strtof(argv[++i], nullptr);
            } else if (!strcmp(argv[i], "--dir")) {
                check_arg(argc, argv, i, 3);
                dir.x = strtof(argv[++i], nullptr);
                dir.y = strtof(argv[++i], nullptr);
                dir.z = strtof(argv[++i], nullptr);
            } else if (!strcmp(argv[i], "--up")) {
                check_arg(argc, argv, i, 3);
                up.x = strtof(argv[++i], nullptr);
                up.y = strtof(argv[++i], nullptr);
                up.z = strtof(argv[++i], nullptr);
            } else if (!strcmp(argv[i], "--fov")) {
                check_arg(argc, argv, i, 1);
                fov = strtof(argv[++i], nullptr);
            } else if (!strcmp(argv[i], "--bench")) {
                check_arg(argc, argv, i, 1);
                bench_iter = strtoul(argv[++i], nullptr, 10);
            } else if (!strcmp(argv[i], "-o")) {
                check_arg(argc, argv, i, 1);
                out_file = argv[++i];
            } else if (!strcmp(argv[i], "--help")) {
                usage();
                return 0;
            } else {
                error("Unknown option '", argv[i], "'");
            }
            continue;
        }
        error("Unexpected argument '", argv[i], "'");
    }
    Camera cam(eye, dir, up, fov, (float)width / (float)height);

#ifdef DISABLE_GUI
    info("Running in console-only mode (compiled with -DDISABLE_GUI).");
    if (bench_iter == 0) {
        warn("Benchmark iterations not set. Defaulting to 1.");
        bench_iter = 1;
    }
#else
    if (SDL_Init(SDL_INIT_VIDEO) != 0)
        error("Cannot initialize SDL.");

    auto window = SDL_CreateWindow(
        "Rodent",
        SDL_WINDOWPOS_UNDEFINED,
        SDL_WINDOWPOS_UNDEFINED,
        width,
        height,
        0);
    if (!window)
        error("Cannot create window.");

    auto renderer = SDL_CreateRenderer(window, -1, 0);
    if (!renderer)
        error("Cannot create renderer.");

    auto texture = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_ARGB8888, SDL_TEXTUREACCESS_STATIC, width, height);
    if (!texture)
        error("Cannot create texture");

    std::unique_ptr<uint32_t> buf(new uint32_t[width * height]);
#endif

    setup_interface(width, height);

    // Force flush to zero mode for denormals
#if defined(__x86_64__) || defined(__amd64__) || defined(_M_X64)
    _mm_setcsr(_mm_getcsr() | (_MM_FLUSH_ZERO_ON | _MM_DENORMALS_ZERO_ON));
#endif

    auto spp = get_spp();
    bool done = false;
    uint64_t timing = 0;
    uint32_t frames = 0;
    uint32_t iter = 0;
    std::vector<double> samples_sec;
    while (!done) {
#ifndef DISABLE_GUI
        done = handle_events(iter, cam);
#endif
        if (iter == 0)
            clear_pixels();

        Settings settings {
            Vec3 { cam.eye.x, cam.eye.y, cam.eye.z },
            Vec3 { cam.dir.x, cam.dir.y, cam.dir.z },
            Vec3 { cam.up.x, cam.up.y, cam.up.z },
            Vec3 { cam.right.x, cam.right.y, cam.right.z },
            cam.w,
            cam.h
        };

        auto ticks = std::chrono::high_resolution_clock::now();
        render(&settings, iter++);
        auto elapsed_ms = std::chrono::duration_cast<std::chrono::milliseconds>(std::chrono::high_resolution_clock::now() - ticks).count();

        if (bench_iter != 0) {
            samples_sec.emplace_back(1000.0 * double(spp * width * height) / double(elapsed_ms));
            if (samples_sec.size() == bench_iter)
                break;
        }

        frames++;
        timing += elapsed_ms;
        if (frames > 10 || timing >= 2500) {
            auto frames_sec = double(frames) * 1000.0 / double(timing);
#ifndef DISABLE_GUI
            std::ostringstream os;
            os << "Rodent [" << frames_sec << " FPS, "
               << iter * spp << " " << "sample" << (iter * spp > 1 ? "s" : "") << "]";
            SDL_SetWindowTitle(window, os.str().c_str());
#endif
            frames = 0;
            timing = 0;
        }

#ifndef DISABLE_GUI
        update_texture(buf.get(), texture, width, height, iter);
        SDL_RenderClear(renderer);
        SDL_RenderCopy(renderer, texture, nullptr, nullptr);
        SDL_RenderPresent(renderer);
#endif
    }

#ifndef DISABLE_GUI
    SDL_DestroyTexture(texture);
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
#endif

    if (out_file != "") {
        save_image(out_file, width, height, iter);
        info("Image saved to '", out_file, "'");
    }

    cleanup_interface();

    if (bench_iter != 0) {
        auto inv = 1.0e-6;
        std::sort(samples_sec.begin(), samples_sec.end());
        info("# ", samples_sec.front() * inv,
             "/", samples_sec[samples_sec.size() / 2] * inv,
             "/", samples_sec.back() * inv,
             " (min/med/max Msamples/s)");
    }
    return 0;
}
#endif