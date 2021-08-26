#ifndef MEASURED_SAMPLER_H
#define MEASURED_SAMPLER_H

#include <string>

#include "powitacq_rgb.h"
using namespace powitacq_rgb;

struct BRDFSampleData;


extern "C" {
    int load_brdf(const char* brdf_name);
    void evaluate(int* id, Vector3f* incident, Vector3f* outgoing, Vector3f* result);
    void sample(int* id, Vector2f* uv, Vector3f* incident, BRDFSampleData* data);
    void pdf(int* id, Vector3f* incident, Vector3f* outgoing, float* result);
    //void print_vec(Vector3f vec);
    //void print_float(float f);
}

#endif