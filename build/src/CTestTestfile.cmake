# CMake generated Testfile for 
# Source directory: /home/niklas/repos/anydsl/rodent/src
# Build directory: /home/niklas/repos/anydsl/rodent/build/src
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(rodent_cornell "/usr/bin/cmake" "-DRODENT=/home/niklas/repos/anydsl/rodent/build/bin/rodent" "-DIM_COMPARE=/usr/bin/compare" "-DRODENT_ARGS=--eye;0;1;2.7;--dir;0;0;-1;--up;0;1;0" "-DTESTING_DIR=/home/niklas/repos/anydsl/rodent/testing" "-DRODENT_DIR=/home/niklas/repos/anydsl/rodent/build" "-DRODENT_OUTPUT=rodent-cornell-output" "-P" "/home/niklas/repos/anydsl/rodent/cmake/test/run_rodent.cmake")
set_tests_properties(rodent_cornell PROPERTIES  _BACKTRACE_TRIPLES "/home/niklas/repos/anydsl/rodent/src/CMakeLists.txt;137;add_test;/home/niklas/repos/anydsl/rodent/src/CMakeLists.txt;0;")
