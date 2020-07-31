file(REMOVE_RECURSE
  "loop_move_automoc.cpp"
  "excute_navigation_automoc.cpp"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/loop_move_gencpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
