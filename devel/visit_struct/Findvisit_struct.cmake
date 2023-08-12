find_path(_visitstruct_header_path "visit_struct/visit_struct.hpp")
if(NOT _visitstruct_header_path)
  if(NOT visit_struct_FIND_REQUIRED)
    message(FATAL "Header visit_struct/visit_struct.hpp not found in system")
  endif()
endif()

add_library(visit_struct::visit_struct INTERFACE IMPORTED)

set_target_properties(
  visit_struct::visit_struct
  PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_visitstruct_header_path}"
  )
