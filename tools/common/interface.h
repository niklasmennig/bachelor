/* interface.h : Impala interface file generated by impala */
#ifndef INTERFACE_H
#define INTERFACE_H

#ifdef __cplusplus
extern "C" {
#endif

struct Vec3 {
    float x;
    float y;
    float z;
};

struct Vec2 {
    float x;
    float y;
};

struct Mat3x3 {
    struct Vec3 col[3];
};

struct Color {
    float r;
    float g;
    float b;
};

struct ShaderInput {
    struct Vec3 point;
    struct Vec3 face_normal;
    struct Vec3 normal;
    struct Vec2 uv_coords;
    struct Mat3x3 local;
    struct Color kd;
    struct Color ks;
    float ns;
};

struct TriHit {
    int id;
    struct Vec2 uv;
};

struct Vec2i {
    int x;
    int y;
};

struct Warp {
    struct Vec2i size;
    struct Vec2 patch_size;
    struct Vec2 inv_patch_size;
    unsigned int const* param_size;
    unsigned int const* param_strides;
    float const* param_values;
    int param_values_offset;
    float const* data;
    float const* marginal_cdf;
    float const* conditional_cdf;
    unsigned int const* array_sizes;
};

struct MeasuredBRDFSampleData {
    struct Vec3 res;
    struct Vec3 out;
    float pdf;
};

struct Tex {
    struct Color const* pixels;
    struct Color border_color;
    unsigned int border;
    unsigned int sampler;
    int width;
    int height;
};

struct BRDFData {
    struct Warp ndf;
    struct Warp sigma;
    struct Warp vndf;
    struct Warp luminance;
    struct Warp rgb;
    int isotropic;
    int jacobian;
};

struct ShadedMesh {
    struct Vec3 const* vertices;
    unsigned int const* indices;
    struct Vec3 const* normals;
    struct Vec2 const* texcoords;
    struct Tex tex_kd;
    struct Tex tex_ks;
    struct Tex tex_ns;
};

struct Color lookup_tex(int opt, struct Tex tex, struct Vec2 uv);
struct ShaderInput compute_shader_input(int opt, struct ShadedMesh mesh, struct TriHit tri_hit);
struct Color shade(int opt, struct ShaderInput input, struct Vec3 in_dir, struct Vec3 out_dir);
void bench_interface(struct ShadedMesh const* mesh_ptr, struct TriHit const* tri_hits, struct Vec3 const* in_dirs, struct Vec3 const* out_dirs, struct Color* colors, int n);
void test_evaluate_brdf(struct BRDFData const* sampler, struct Vec3 const* incoming, struct Vec3 const* outgoing, struct Vec3* result);
void test_pdf_brdf(struct BRDFData const* sampler, struct Vec3 const* incoming, struct Vec3 const* outgoing, float* result);
void test_sample_brdf(struct BRDFData const* sampler, struct Vec2 const* u, struct Vec3 const* incoming, struct MeasuredBRDFSampleData* result);

#ifdef __cplusplus
}
#endif

#endif /* INTERFACE_H */

