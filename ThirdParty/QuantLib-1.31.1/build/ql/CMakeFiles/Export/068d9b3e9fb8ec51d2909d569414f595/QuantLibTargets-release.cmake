#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "QuantLib::QuantLib" for configuration "Release"
set_property(TARGET QuantLib::QuantLib APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(QuantLib::QuantLib PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libQuantLib.1.31.1.dylib"
  IMPORTED_SONAME_RELEASE "@rpath/libQuantLib.1.dylib"
  )

list(APPEND _cmake_import_check_targets QuantLib::QuantLib )
list(APPEND _cmake_import_check_files_for_QuantLib::QuantLib "${_IMPORT_PREFIX}/lib/libQuantLib.1.31.1.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
