file(REMOVE_RECURSE
  "move_to_grab_automoc.cpp"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/move_to_grab_gencpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()