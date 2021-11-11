#include "interface.h"
#include <fstream>
#include <vector>

std::vector<float> linearize_warp(const Warp* warp);

template <typename Array>
Warp delinearize_warp(Array& data);

void delinearize_warp_in_place(float* data, Warp* warp);

Warp read_warp(std::istream& is);

BRDFData* load_brdf_data(std::string name);