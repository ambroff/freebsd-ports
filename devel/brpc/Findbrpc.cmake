find_path(_brpc_header_path "brpc/uri.h")
if(NOT _brpc_header_path)
  if(NOT brpc_FIND_REQUIRED)
    message(FATAL "Header brpc/brpc.hpp not found in system")
  endif()
endif()

add_library(brpc::brpc INTERFACE IMPORTED)

set_target_properties(
  brpc::brpc
  PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_brpc_header_path}"
  IMPORTED_LINK_NAME brpc
  )
