#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "loglib" for configuration "Debug"
set_property(TARGET loglib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(loglib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/loglib.lib"
  )

list(APPEND _cmake_import_check_targets loglib )
list(APPEND _cmake_import_check_files_for_loglib "${_IMPORT_PREFIX}/lib/loglib.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
