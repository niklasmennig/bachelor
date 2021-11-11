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
    std::vector<float> data;
    for (int i = 0; i < 6; i++) {data.push_back(warp->array_sizes[i]);}
    
    data.push_back(warp->size.x);data.push_back(warp->size.y);
    data.push_back(warp->patch_size.x);data.push_back(warp->patch_size.y);
    data.push_back(warp->inv_patch_size.x);data.push_back(warp->inv_patch_size.y);
    data.push_back(warp->param_values_offset);

    for (int i = 0; i < warp->array_sizes[0]; i++) {data.push_back( (float)warp->param_size[i]);}

    for (int i = 0; i < warp->array_sizes[1]; i++) {data.push_back( (float)warp->param_strides[i]);}

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
        sizes[i] = (unsigned int)data[i];
    }
    warp.array_sizes = sizes;
    offset += 6;

    warp.size = Vec2i{ x : (int)data[offset], y: (int)data[offset + 1] };
    offset += 2;

    warp.patch_size = Vec2{ x : data[offset], y: data[offset + 1] };
    offset += 2;
    
    warp.inv_patch_size = Vec2{ x : data[offset], y: data[offset + 1] };
    offset += 2;

    warp.param_values_offset = (int)data[offset];
    offset += 1;

    auto param_size = new unsigned int[warp.array_sizes[0]];
    for (int i = 0; i < warp.array_sizes[0]; i++) {param_size[i] = (unsigned int)data[offset + i];}
    offset += warp.array_sizes[0];
    warp.param_size = param_size;

    auto param_strides = new unsigned int[warp.array_sizes[1]];
    for (int i = 0; i < warp.array_sizes[1]; i++) {param_strides[i] = (unsigned int)data[offset + i];}
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
