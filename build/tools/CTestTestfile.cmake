# CMake generated Testfile for 
# Source directory: /home/niklas/repos/anydsl/rodent/tools
# Build directory: /home/niklas/repos/anydsl/rodent/build/tools
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(single_bvh4 "/usr/bin/cmake" "-DBENCH_TRAVERSAL=/home/niklas/repos/anydsl/rodent/build/bin/bench_traversal" "-DFBUF2PNG=/home/niklas/repos/anydsl/rodent/build/bin/fbuf2png" "-DIM_COMPARE=/usr/bin/compare" "-DBENCH_TRAVERSAL_ARGS=--single;--bvh-width;4" "-DTESTING_DIR=/home/niklas/repos/anydsl/rodent/testing" "-DTRAVERSAL_OUTPUT=single-bvh4-output" "-P" "/home/niklas/repos/anydsl/rodent/cmake/test/run_traversal.cmake")
set_tests_properties(single_bvh4 PROPERTIES  _BACKTRACE_TRIPLES "/home/niklas/repos/anydsl/rodent/tools/CMakeLists.txt;26;add_test;/home/niklas/repos/anydsl/rodent/tools/CMakeLists.txt;0;")
add_test(packet_bvh4 "/usr/bin/cmake" "-DBENCH_TRAVERSAL=/home/niklas/repos/anydsl/rodent/build/bin/bench_traversal" "-DFBUF2PNG=/home/niklas/repos/anydsl/rodent/build/bin/fbuf2png" "-DIM_COMPARE=/usr/bin/compare" "-DBENCH_TRAVERSAL_ARGS=--packet;--ray-width;4;--bvh-width;4" "-DTESTING_DIR=/home/niklas/repos/anydsl/rodent/testing" "-DTRAVERSAL_OUTPUT=packet-bvh4-output" "-P" "/home/niklas/repos/anydsl/rodent/cmake/test/run_traversal.cmake")
set_tests_properties(packet_bvh4 PROPERTIES  _BACKTRACE_TRIPLES "/home/niklas/repos/anydsl/rodent/tools/CMakeLists.txt;27;add_test;/home/niklas/repos/anydsl/rodent/tools/CMakeLists.txt;0;")
add_test(hybrid_bvh4 "/usr/bin/cmake" "-DBENCH_TRAVERSAL=/home/niklas/repos/anydsl/rodent/build/bin/bench_traversal" "-DFBUF2PNG=/home/niklas/repos/anydsl/rodent/build/bin/fbuf2png" "-DIM_COMPARE=/usr/bin/compare" "-DBENCH_TRAVERSAL_ARGS=--ray-width;4;--bvh-width;4" "-DTESTING_DIR=/home/niklas/repos/anydsl/rodent/testing" "-DTRAVERSAL_OUTPUT=hybrid-bvh4-output" "-P" "/home/niklas/repos/anydsl/rodent/cmake/test/run_traversal.cmake")
set_tests_properties(hybrid_bvh4 PROPERTIES  _BACKTRACE_TRIPLES "/home/niklas/repos/anydsl/rodent/tools/CMakeLists.txt;28;add_test;/home/niklas/repos/anydsl/rodent/tools/CMakeLists.txt;0;")
add_test(single_bvh8 "/usr/bin/cmake" "-DBENCH_TRAVERSAL=/home/niklas/repos/anydsl/rodent/build/bin/bench_traversal" "-DFBUF2PNG=/home/niklas/repos/anydsl/rodent/build/bin/fbuf2png" "-DIM_COMPARE=/usr/bin/compare" "-DBENCH_TRAVERSAL_ARGS=--single;--bvh-width;8" "-DTESTING_DIR=/home/niklas/repos/anydsl/rodent/testing" "-DTRAVERSAL_OUTPUT=single-bvh8-output" "-P" "/home/niklas/repos/anydsl/rodent/cmake/test/run_traversal.cmake")
set_tests_properties(single_bvh8 PROPERTIES  _BACKTRACE_TRIPLES "/home/niklas/repos/anydsl/rodent/tools/CMakeLists.txt;29;add_test;/home/niklas/repos/anydsl/rodent/tools/CMakeLists.txt;0;")
add_test(packet_bvh8 "/usr/bin/cmake" "-DBENCH_TRAVERSAL=/home/niklas/repos/anydsl/rodent/build/bin/bench_traversal" "-DFBUF2PNG=/home/niklas/repos/anydsl/rodent/build/bin/fbuf2png" "-DIM_COMPARE=/usr/bin/compare" "-DBENCH_TRAVERSAL_ARGS=--packet;--ray-width;8;--bvh-width;8" "-DTESTING_DIR=/home/niklas/repos/anydsl/rodent/testing" "-DTRAVERSAL_OUTPUT=packet-bvh8-output" "-P" "/home/niklas/repos/anydsl/rodent/cmake/test/run_traversal.cmake")
set_tests_properties(packet_bvh8 PROPERTIES  _BACKTRACE_TRIPLES "/home/niklas/repos/anydsl/rodent/tools/CMakeLists.txt;30;add_test;/home/niklas/repos/anydsl/rodent/tools/CMakeLists.txt;0;")
add_test(hybrid_bvh8 "/usr/bin/cmake" "-DBENCH_TRAVERSAL=/home/niklas/repos/anydsl/rodent/build/bin/bench_traversal" "-DFBUF2PNG=/home/niklas/repos/anydsl/rodent/build/bin/fbuf2png" "-DIM_COMPARE=/usr/bin/compare" "-DBENCH_TRAVERSAL_ARGS=--ray-width;8;--bvh-width;8" "-DTESTING_DIR=/home/niklas/repos/anydsl/rodent/testing" "-DTRAVERSAL_OUTPUT=hybrid-bvh8-output" "-P" "/home/niklas/repos/anydsl/rodent/cmake/test/run_traversal.cmake")
set_tests_properties(hybrid_bvh8 PROPERTIES  _BACKTRACE_TRIPLES "/home/niklas/repos/anydsl/rodent/tools/CMakeLists.txt;31;add_test;/home/niklas/repos/anydsl/rodent/tools/CMakeLists.txt;0;")
subdirs("bench_traversal")
subdirs("bench_shading")
subdirs("bench_interface")
subdirs("ray_gen")
subdirs("fbuf2png")
subdirs("bvh_extractor")
