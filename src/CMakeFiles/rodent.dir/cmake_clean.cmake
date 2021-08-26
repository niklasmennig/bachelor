file(REMOVE_RECURSE
  "../bin/rodent"
  "../bin/rodent.pdb"
  "main.impala"
  "rodent.ll"
  "rodent.o"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/rodent.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
