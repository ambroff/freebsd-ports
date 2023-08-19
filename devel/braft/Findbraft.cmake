find_path(_braft_header_path "braft/node.h")
if(NOT _braft_header_path)
  if(NOT braft_FIND_REQUIRED)
    message(FATAL "Header braft/braft.hpp not found in system")
  endif()
endif()

add_library(braft::braft INTERFACE IMPORTED)

set_target_properties(
  braft::braft
  PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_braft_header_path}"
  IMPORTED_LINK_NAME braft
  )
