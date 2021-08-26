#define POWITACQ_IMPLEMENTATION 1
#include "powitacq_rgb.h"

#include "measured_sampler.h"


struct BRDFSampleData {
    Vector3f ref;
    Vector3f out;
    float pdf;
};

#include <vector>
std::vector<std::string> loaded_brdfs;
std::vector<BRDF*> brdfs;

// loads a brdf file and returns the id
int load_brdf(const char* brdf_name) {
    auto it = std::find(loaded_brdfs.begin(), loaded_brdfs.end(), brdf_name);
    if (it != loaded_brdfs.end()) {
        // already loaded, return id
        return it - loaded_brdfs.begin();
    } else {
        // load file
        BRDF* brdf = new BRDF("data/" + std::string(brdf_name));
        brdfs.push_back(brdf);
        loaded_brdfs.push_back(brdf_name);
        // return id of newly loaded brdf
        return loaded_brdfs.size() - 1;
    }
}

void evaluate(int* id, Vector3f* incident, Vector3f* outgoing, Vector3f* result) {
    Vector3f res = brdfs[*id]->eval(*incident, *outgoing);
    result->x() = res.x();
    result->y() = res.y();
    result->z() = res.z();
}

// solve this using pointer to SampleData as parameter sample(..., ..., SampleData* data)
void sample(int* id, Vector2f* uv, Vector3f* incident, BRDFSampleData* data) {
    data->ref = brdfs[*id]->sample(*uv, *incident, &data->out, &data->pdf);
}

void pdf(int* id, Vector3f* incident, Vector3f* outgoing, float* res) {
    *res = brdfs[*id]->pdf(*incident, *outgoing);
}

// void print_vec(Vector3f vec) {
//     printf("(%f/%f/%f)\n", vec.x(), vec.y(), vec.z());
// }

// void print_float(float f) {
//     printf("%f\n", f);
// }