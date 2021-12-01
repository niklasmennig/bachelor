#include "measured.h"

#include "interface.h"

#define POWITACQ_IMPLEMENTATION
#include "powitacq_rgb.h"

template <size_t Dimension> Warp convert_warp(powitacq_rgb::Marginal2D<Dimension> in_warp) {
    unsigned int* param_sizes = new unsigned int[Dimension];
    for (int d = 0; d < Dimension; d++) {
        param_sizes[d] = in_warp.m_param_values[d].size();
    }

    unsigned int* param_strides = new unsigned int[Dimension];
    for (int d = 0; d < Dimension; d++) {
        param_strides[d] = in_warp.m_param_strides[d];
    }

    size_t param_values_offset = 0;
    for (int d = 0; d < Dimension; d++) {
        param_values_offset = std::max(param_values_offset, in_warp.m_param_values[d].size());
    }

    float* param_values = new float[param_values_offset * Dimension];
    memset(param_values, 0, sizeof(float) * param_values_offset * Dimension);
    for (int i = 0; i < Dimension; i++) {
        memcpy(&param_values[i * param_values_offset], 
                in_warp.m_param_values[i].data(),
                sizeof(float) * in_warp.m_param_values[i].size());
    }
    
    float* data = new float[in_warp.m_data.size()];
    memcpy(data, in_warp.m_data.data(), in_warp.m_data.size() * sizeof(float));

    float* marginal_cdf = new float[in_warp.m_marginal_cdf.size()];
    memcpy(marginal_cdf, in_warp.m_marginal_cdf.data(), in_warp.m_marginal_cdf.size() * sizeof(float));

    float* conditional_cdf = new float[in_warp.m_conditional_cdf.size()];
    memcpy(conditional_cdf, in_warp.m_conditional_cdf.data(), in_warp.m_conditional_cdf.size() * sizeof(float));

    unsigned int * array_sizes = new unsigned int[]{Dimension, Dimension, param_values_offset * Dimension, in_warp.m_data.size(), in_warp.m_marginal_cdf.size(), in_warp.m_conditional_cdf.size()};

    return Warp{
        size : Vec2i{x : (int)in_warp.m_size.x(), y : (int)in_warp.m_size.y()},
        patch_size : Vec2{x : in_warp.m_patch_size.x(),y : in_warp.m_patch_size.y()},
        inv_patch_size : Vec2{x : in_warp.m_inv_patch_size.x(), y : in_warp.m_inv_patch_size.y()},
        param_size : param_sizes,
        param_strides : param_strides,
        param_values : param_values,
        param_values_offset : param_values_offset,
        data : data,
        marginal_cdf : marginal_cdf,
        conditional_cdf : conditional_cdf,
        array_sizes : array_sizes
    };
}

// DEPRECATED - use convert_warp<Dimension>

Warp* convert_warp2d0(powitacq_rgb::Warp2D0 in_warp) {

    int param_values_offset = in_warp.m_param_values[0].size();

    float* param_values = new float[param_values_offset];
        memcpy(&param_values[0], 
                in_warp.m_param_values[0].data(),
                sizeof(float) * param_values_offset);

    return new Warp{
        size : Vec2i{x : in_warp.m_size.x(), y : in_warp.m_size.y()},
        patch_size : Vec2{x : in_warp.m_patch_size.x(),y : in_warp.m_patch_size.y()},
        inv_patch_size : Vec2{x : in_warp.m_inv_patch_size.x(), y : in_warp.m_inv_patch_size.y()},
        param_size : in_warp.m_param_size,
        param_strides : in_warp.m_param_strides,
        param_values : param_values,
        param_values_offset : param_values_offset,
        data : in_warp.m_data.data(),
        marginal_cdf : in_warp.m_marginal_cdf.data(),
        conditional_cdf : in_warp.m_conditional_cdf.data()
    };
}

Warp* convert_warp2d2(powitacq_rgb::Warp2D2 in_warp) {
    const unsigned int* param_sizes = new unsigned int[2]{
        in_warp.m_param_values[0].size(),
        in_warp.m_param_values[1].size()
    };

    const unsigned int* param_strides = new unsigned int[2] {
        in_warp.m_param_strides[0],
        in_warp.m_param_strides[1]
    };
    
    int param_values_offset = std::max(in_warp.m_param_values[0].size(), 
        in_warp.m_param_values[1].size()
    );

    float* param_values = new float[param_values_offset * 2];
    for (int i = 0; i < 2; i++) {
        memcpy(&param_values[i * param_values_offset], 
                in_warp.m_param_values[i].data(),
                sizeof(float) * in_warp.m_param_values[i].size());
    }

    return new Warp{
        size : Vec2i{x : in_warp.m_size.x(), y : in_warp.m_size.y()},
        patch_size : Vec2{x : in_warp.m_patch_size.x(),y : in_warp.m_patch_size.y()},
        inv_patch_size : Vec2{x : in_warp.m_inv_patch_size.x(), y : in_warp.m_inv_patch_size.y()},
        param_size : param_sizes,
        param_strides : param_strides,
        param_values : param_values,
        param_values_offset : param_values_offset,
        data : in_warp.m_data.data(),
        marginal_cdf : in_warp.m_marginal_cdf.data(),
        conditional_cdf : in_warp.m_conditional_cdf.data()
    };
}

Warp* convert_warp2d3(powitacq_rgb::Warp2D3 in_warp) {
    const unsigned int* param_sizes = new unsigned int[3]{
        in_warp.m_param_values[0].size(),
        in_warp.m_param_values[1].size(),
        in_warp.m_param_values[2].size()
    };

    const unsigned int* param_strides = new unsigned int[3] {
        in_warp.m_param_strides[0],
        in_warp.m_param_strides[1],
        in_warp.m_param_strides[2]
    };
    
    int param_values_offset = std::max(
        std::max(in_warp.m_param_values[0].size(), 
        in_warp.m_param_values[1].size()),
        in_warp.m_param_values[2].size()
    );

    float* param_values = new float[param_values_offset * 3];
    for (int i = 0; i < 3; i++) {
        memcpy(&param_values[i * param_values_offset], 
                in_warp.m_param_values[i].data(),
                sizeof(float) * in_warp.m_param_values[i].size());
    }

    return new Warp{
        size : Vec2i{x : in_warp.m_size.x(), y : in_warp.m_size.y()},
        patch_size : Vec2{x : in_warp.m_patch_size.x(),y : in_warp.m_patch_size.y()},
        inv_patch_size : Vec2{x : in_warp.m_inv_patch_size.x(), y : in_warp.m_inv_patch_size.y()},
        param_size : param_sizes,
        param_strides : param_strides,
        param_values : param_values,
        param_values_offset : param_values_offset,
        data : in_warp.m_data.data(),
        marginal_cdf : in_warp.m_marginal_cdf.data(),
        conditional_cdf : in_warp.m_conditional_cdf.data()
    };
}

// -----------

BRDFData* convert_brdf(powitacq_rgb::BRDF* brdf) {
    auto brdf_data = brdf->m_data.get();

    return new BRDFData{
        ndf : convert_warp<0>(brdf_data->ndf),
        sigma : convert_warp<0>(brdf_data->sigma),
        vndf : convert_warp<2>(brdf_data->vndf),
        luminance : convert_warp<2>(brdf_data->luminance),
        rgb : convert_warp<3>(brdf_data->rgb),
        isotropic : brdf_data->isotropic,
        jacobian : brdf_data->jacobian,
    };
}

#include "buffer.h"

std::vector<float> linearize_warp(const Warp* warp) {
    static_assert(sizeof(float) == sizeof(int));
    std::vector<float> data;
    for (int i = 0; i < 6; i++) {data.push_back( *reinterpret_cast<const float*>(&warp->array_sizes[i]));}
    
    data.push_back(*reinterpret_cast<const float*>(&warp->size.x));data.push_back(*reinterpret_cast<const float*>(&warp->size.y));
    data.push_back(warp->patch_size.x);data.push_back(warp->patch_size.y);
    data.push_back(warp->inv_patch_size.x);data.push_back(warp->inv_patch_size.y);
    data.push_back(*reinterpret_cast<const float*>(&warp->param_values_offset));

    for (int i = 0; i < warp->array_sizes[0]; i++) {data.push_back( *reinterpret_cast<const float*>(&warp->param_size[i]));}

    for (int i = 0; i < warp->array_sizes[1]; i++) {data.push_back( *reinterpret_cast<const float*>(&warp->param_strides[i]));}

    for (int i = 0; i < warp->array_sizes[2]; i++) {data.push_back(warp->param_values[i]);}

    for (int i = 0; i < warp->array_sizes[3]; i++) {data.push_back(warp->data[i]);}

    for (int i = 0; i < warp->array_sizes[4]; i++) {data.push_back(warp->marginal_cdf[i]);}

    for (int i = 0; i < warp->array_sizes[5]; i++) {data.push_back(warp->conditional_cdf[i]);}

    return data;
}

template <typename Array>
Warp delinearize_warp(Array& data) {
    Warp warp;
    unsigned int offset = 0;
    auto sizes = new unsigned int[6];
    for (int i = 0; i < 6; i++) {
        sizes[i] = *reinterpret_cast<unsigned int*>(&data[i]);
    }
    warp.array_sizes = sizes;
    offset += 6;

    warp.size = Vec2i{ x : *reinterpret_cast<int*>(&data[offset]), y: *reinterpret_cast<int*>(&data[offset + 1]) };
    offset += 2;

    warp.patch_size = Vec2{ x : data[offset], y: data[offset + 1] };
    offset += 2;
    
    warp.inv_patch_size = Vec2{ x : data[offset], y: data[offset + 1] };
    offset += 2;

    warp.param_values_offset = *reinterpret_cast<int*>(&data[offset]);
    offset += 1;

    auto param_size = new unsigned int[warp.array_sizes[0]];
    for (int i = 0; i < warp.array_sizes[0]; i++) {param_size[i] = *reinterpret_cast<unsigned int*>(&data[offset + i]);}
    offset += warp.array_sizes[0];
    warp.param_size = param_size;

    auto param_strides = new unsigned int[warp.array_sizes[1]];
    for (int i = 0; i < warp.array_sizes[1]; i++) {param_strides[i] = *reinterpret_cast<unsigned int*>(&data[offset + i]);}
    offset += warp.array_sizes[1];
    warp.param_strides = param_strides;

    auto param_values = new float[warp.array_sizes[2]];
    for (int i = 0; i < warp.array_sizes[2]; i++) {param_values[i] = data[offset + i];}
    offset += warp.array_sizes[2];
    warp.param_values = param_values;

    auto w_data = new float[warp.array_sizes[3]];
    for (int i = 0; i < warp.array_sizes[3]; i++) {w_data[i] = data[offset + i];}
    offset += warp.array_sizes[3];
    warp.data = w_data;

    auto marginal_cdf = new float[warp.array_sizes[4]];
    for (int i = 0; i < warp.array_sizes[4]; i++) {marginal_cdf[i] = data[offset + i];}
    offset += warp.array_sizes[4];
    warp.marginal_cdf = marginal_cdf;

    auto conditional_cdf = new float[warp.array_sizes[5]];
    for (int i = 0; i < warp.array_sizes[5]; i++) {conditional_cdf[i] = data[offset + i];}
    offset += warp.array_sizes[5];
    warp.conditional_cdf = conditional_cdf;

    return warp;
}

Warp read_warp(std::istream& is) {
    std::vector<float> warp_data;
    read_buffer(is, warp_data);
    return delinearize_warp(warp_data);
}

BRDFData* load_brdf_data (std::string brdf_name) {
    powitacq_rgb::BRDF* brdf = new powitacq_rgb::BRDF("../testing/" + brdf_name + ".bsdf");
    BRDFData* data = convert_brdf(brdf);
    return data;
}

BRDFData* read_brdf_data(std::istream& is) {
    BRDFData* brdf_data = new BRDFData();
    brdf_data->ndf = read_warp(is);
    brdf_data->sigma = read_warp(is);
    brdf_data->vndf = read_warp(is);
    brdf_data->luminance = read_warp(is);
    brdf_data->rgb = read_warp(is);
    brdf_data->isotropic = is.get();
    brdf_data->jacobian = is.get();
    return brdf_data;
}

bool compare_warp(Warp* w1, Warp* w2) {
    printf("Comparing warps\n");
    if (w1->size.x != w2->size.x || w1->size.y != w2->size.y) {
        printf("sizes don't match\n");
        printf("(%d/%d) | (%d/%d)\n", w1->size.x, w1->size.y, w2->size.x, w2->size.y);
        return false;
    }
    if (w1->patch_size.x != w2->patch_size.x || w1->patch_size.y != w2->patch_size.y) {
        printf("patch sizes don't match\n");
        return false;
    }
    if (w1->inv_patch_size.x != w2->inv_patch_size.x || w1->inv_patch_size.y != w2->inv_patch_size.y) {
        printf("inv. patch sizes don't match\n");
        return false;
    }
    
    if (int diff = memcmp(w1->array_sizes, w2->array_sizes, sizeof(unsigned int) * 6) != 0) {
        printf("array sizes don't match\n");
        printf("diff at %d\n", diff);
        return false;
    }

    if (int diff = memcmp(w1->param_size, w2->param_size, sizeof(unsigned int) * w1->array_sizes[0]) != 0) {
        printf("param sizes don't match\n");
        printf("diff at %d\n", diff);
        return false;
    }

    if (int diff = memcmp(w1->param_strides, w2->param_strides, sizeof(unsigned int) * w1->array_sizes[1]) != 0) {
        printf("param strides don't match\n");
        printf("diff at %d\n", diff);
        return false;
    }

    if (int diff = memcmp(w1->param_values, w2->param_values, sizeof(float) * w1->array_sizes[2]) != 0) {
        printf("param values don't match\n");
        printf("diff at %d\n", diff);
        for (int i = 0; i < w1->array_sizes[2]; i++) {
            printf("%f / %f\n", w1->param_values[i], w2->param_values[i]);
        }
        return false;
    }

    if (int diff = memcmp(w1->data, w2->data, sizeof(float) * w1->array_sizes[3]) != 0) {
        printf("data doesn't match\n");
        printf("diff at %d\n", diff);
        return false;
    }

    if (int diff = memcmp(w1->marginal_cdf, w2->marginal_cdf, sizeof(float) * w1->array_sizes[4]) != 0) {
        printf("marginal cdf's don't match\n");
        printf("diff at %d\n", diff);
        return false;
    }

    if (int diff = memcmp(w1->conditional_cdf, w2->conditional_cdf, sizeof(float) * w1->array_sizes[5]) != 0) {
        printf("conditional cdf's don't match\n");
        printf("diff at %d\n", diff);
        return false;
    }
    
}

std::unordered_map<std::string, powitacq_rgb::BRDF*> loaded_c_brdfs;
powitacq_rgb::BRDF* load_c_brdf(std::string name) {
    if (loaded_c_brdfs.find(name) != loaded_c_brdfs.end()) {
        return loaded_c_brdfs[name];
    } else {
        printf("Loading new BRDF: %s\n", name.c_str());
        return loaded_c_brdfs[name] = new powitacq_rgb::BRDF("../testing/" + name);
    }
}

extern "C" {
    void c_evaluate(const char* brdf, Vec3* v_in, Vec3* v_out, Color* col) {
        powitacq_rgb::Vector3f in = powitacq_rgb::Vector3f(v_in->x, v_in->y, v_in->z);
        powitacq_rgb::Vector3f out = powitacq_rgb::Vector3f(v_out->x, v_out->y, v_out->z);
        powitacq_rgb::Vector3f res = load_c_brdf(brdf)->eval(in, out);

        col->r = res.x();
        col->g = res.y();
        col->b = res.z();
    }

    void c_pdf(const char* brdf, Vec3* v_in, Vec3* v_out, float* pdf) {
        powitacq_rgb::Vector3f in = powitacq_rgb::Vector3f(v_in->x, v_in->y, v_in->z);
        powitacq_rgb::Vector3f out = powitacq_rgb::Vector3f(v_out->x, v_out->y, v_out->z);
        *pdf = load_c_brdf(brdf)->pdf(in, out);
    }

    void c_sample(const char* brdf,Vec2* v_u, Vec3* v_out, MeasuredBRDFSampleData* sample) {
        powitacq_rgb::Vector3f in = powitacq_rgb::Vector3f(v_out->x, v_out->y, v_out->z);
        powitacq_rgb::Vector2f u = powitacq_rgb::Vector2f(v_u->x, v_u->y);
        powitacq_rgb::Vector3f out;
        float pdf;
        powitacq_rgb::Vector3f res = load_c_brdf(brdf)->sample(u, in, &out, &pdf);

        sample->out = Vec3 {x : out.x(), y : out.y(), z : out.z()};
        sample->pdf = pdf;
        sample->res = Vec3 {x : res.x(), y : res.y(), z : res.z()};
    }
}