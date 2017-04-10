#include <iostream>
#include <cstring>
#include <vector>
#include <numeric>
#include <algorithm>

#include "traversal.h"
#include "load_bvh.h"
#include "load_rays.h"

inline void check_argument(int i, int argc, char** argv) {
    if (i + 1 >= argc) {
        std::cerr << "Missing argument for " << argv[i] << std::endl;
        exit(1);
    }
}

inline void usage() {
    std::cout << "Usage: bench_traversal [options]\n"
                 "Available options:\n"
                 "  -bvh     --bvh-file        Sets the BVH file to use\n"
                 "  -ray     --ray-file        Sets the ray file to use\n"
                 "  -tmin                      Sets the minimum distance along the rays (default: 0)\n"
                 "  -tmax                      Sets the maximum distance along the rays (default: 1e9)\n"
                 "  -bench   --bench-iters     Sets the number of benchmark iterations (default: 1)\n"
                 "  -warmup  --bench-warmup    Sets the number of warmup iterations (default: 0)\n"
                 "  -gpu                       Run the traversal on the GPU (disabled by default)\n"
                 "  -any                       Exit at the first intersection (disabled by default)\n"
                 "  -o       --output          Sets the output file name (no file is generated by default)\n";
}

static double bench_cpu(Bvh4* bvh4, Ray8SoA* rays, Hit8SoA* hits, size_t n, bool any_hit) {
    auto t0 = anydsl_get_micro_time();
    frontend_cpu_traverse_bvh4(bvh4, rays, hits, n, any_hit);
    auto t1 = anydsl_get_micro_time();
    return (t1 - t0) / 1000.0;
}

static double bench_gpu(Bvh2* bvh2, Ray1AoS* rays, Hit1AoS* hits, size_t n, bool any_hit) {
    auto t0 = anydsl_get_kernel_time();
    frontend_gpu_traverse_bvh2(bvh2, rays, hits, n, any_hit);
    auto t1 = anydsl_get_kernel_time();
    return (t1 - t0) / 1000.0;
}

int main(int argc, char** argv) {
    std::string ray_file;
    std::string bvh_file;
    std::string out_file;
    float tmin = 0.0f, tmax = 1e9f;
    int iters = 1;
    int warmup = 0;
    bool use_gpu = false;
    bool any_hit = false;

    for (int i = 1; i < argc; i++) {
        auto arg = argv[i];
        if (arg[0] == '-') {
            if (!strcmp(arg, "-h") || !strcmp(arg, "--help")) {
                usage();
                return 0;
            } else if (!strcmp(arg, "-bvh") || !strcmp(arg, "--bvh-file")) {
                check_argument(i, argc, argv);
                bvh_file = argv[++i];
            } else if (!strcmp(arg, "-ray") || !strcmp(arg, "--ray-file")) {
                check_argument(i, argc, argv);
                ray_file = argv[++i];
            } else if (!strcmp(arg, "-tmin")) {
                check_argument(i, argc, argv);
                tmin = strtof(argv[++i], nullptr);
            } else if (!strcmp(arg, "-tmax")) {
                check_argument(i, argc, argv);
                tmax = strtof(argv[++i], nullptr);
            } else if (!strcmp(arg, "-bench") || !strcmp(arg, "--bench-iters")) {
                check_argument(i, argc, argv);
                iters = strtol(argv[++i], nullptr, 10);
            } else if (!strcmp(arg, "-warmup") || !strcmp(arg, "--warmup-iters")) {
                check_argument(i, argc, argv);
                warmup = strtol(argv[++i], nullptr, 10);
            } else if (!strcmp(arg, "-gpu")) {
                use_gpu = true;
            } else if (!strcmp(arg, "-any")) {
                any_hit = true;
            } else if (!strcmp(arg, "-o") || !strcmp(arg, "--output")) {
                check_argument(i, argc, argv);
                out_file = argv[++i];
            } else {
                std::cerr << "Unknown option '" << arg << "'" << std::endl;
                return 1;
            }
        } else {
            std::cerr << "Invalid argument '" << arg << "'" << std::endl;
            return 1;
        }
    }

    if (bvh_file == "") {
        std::cerr << "No BVH file specified" << std::endl;
        return 1;
    }
    if (ray_file == "") {
        std::cerr << "No ray file specified" << std::endl;
        return 1;
    }

    anydsl::Array<Bvh2Node> nodes2;
    anydsl::Array<Bvh4Node> nodes4;
    anydsl::Array<Bvh2Tri>  tris2;
    anydsl::Array<Bvh4Tri>  tris4;

    Bvh4 bvh4;
    Bvh2 bvh2;
    if (use_gpu) {
        if (!load_bvh(bvh_file, nodes2, tris2, true)) {
            std::cerr << "Cannot load BVH file" << std::endl;
            return 1;
        }
        bvh2 = Bvh2{ nodes2.data(), tris2.data() };
    } else {
        if (!load_bvh(bvh_file, nodes4, tris4, false)) {
            std::cerr << "Cannot load BVH file" << std::endl;
            return 1;
        }
        bvh4 = Bvh4{ nodes4.data(), tris4.data() };
    }

    anydsl::Array<Ray1AoS> rays1;
    anydsl::Array<Ray8SoA> rays8;
    size_t ray_count = 0;
    if (use_gpu) {
        if (!load_rays(ray_file, rays1, tmin, tmax, true)) {
            std::cerr << "Cannot load rays" << std::endl;
            return 1;
        }
        ray_count = rays1.size();
    } else {
        if (!load_rays(ray_file, rays8, tmin, tmax, false)) {
            std::cerr << "Cannot load rays" << std::endl;
            return 1;
        }
        ray_count = rays8.size() * 8;
    }
    
    std::cout << ray_count << " ray(s) in the distribution file." << std::endl;

    anydsl::Array<Hit1AoS> hits1;
    anydsl::Array<Hit8SoA> hits8;
    if (use_gpu) {
        hits1 = std::move(anydsl::Array<Hit1AoS>(anydsl::Platform::Cuda, anydsl::Device(0), rays1.size()));
    } else {
        hits8 = std::move(anydsl::Array<Hit8SoA>(rays8.size()));
    }

    for (int i = 0; i < warmup; i++) {
        if (use_gpu) bench_gpu(&bvh2, rays1.data(), hits1.data(), ray_count, any_hit);
        else         bench_cpu(&bvh4, rays8.data(), hits8.data(), ray_count, any_hit);
    }

    std::vector<double> timings;
    for (int i = 0; i < iters; i++) {
        auto t = use_gpu
            ? bench_gpu(&bvh2, rays1.data(), hits1.data(), ray_count, any_hit)
            : bench_cpu(&bvh4, rays8.data(), hits8.data(), ray_count, any_hit);
        timings.push_back(t);
    }

    size_t intr = 0;
    if (use_gpu) {
        anydsl::Array<Hit1AoS> host_hits(hits1.size());
        anydsl::copy(hits1, host_hits);
        for (auto& hit: host_hits)
            intr += (hit.tri_id >= 0);
        if (out_file != "") {
            std::ofstream of(out_file, std::ofstream::binary);
            for (auto& hit: host_hits)
                of.write((char*)&hit.t, sizeof(float));
        }
    } else {
        for (auto& hit: hits8) {
            for (int i = 0; i < 8; i++)
                intr += (hit.tri_id[i] >= 0);
        }
        if (out_file != "") {
            std::ofstream of(out_file, std::ofstream::binary);
            for (auto& hit: hits8) {
                for (int i = 0; i < 8; i++)
                    of.write((char*)&hit.t[i], sizeof(float));
            }
        }
    }

    std::sort(timings.begin(), timings.end());
    auto sum = std::accumulate(timings.begin(), timings.end(), 0.0);
    auto avg = sum / timings.size();
    auto med = timings[timings.size() / 2];
    auto min = *std::min_element(timings.begin(), timings.end());
    std::cout << sum << "ms for " << iters << " iteration(s)" << std::endl;
    std::cout << ray_count * iters / (1000.0 * sum) << " Mrays/sec" << std::endl;
    std::cout << "# Average: " << avg << " ms" << std::endl;
    std::cout << "# Median: " << med  << " ms" << std::endl;
    std::cout << "# Min: " << min << " ms" << std::endl;
    std::cout << intr << " intersection(s)" << std::endl;
    return 0;
}
