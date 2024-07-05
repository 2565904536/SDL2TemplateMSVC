#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "WavPack::WavPack" for configuration "Release"
set_property(TARGET WavPack::WavPack APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(WavPack::WavPack PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "ASM_MASM;C"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libwavpack.lib"
  )

list(APPEND _cmake_import_check_targets WavPack::WavPack )
list(APPEND _cmake_import_check_files_for_WavPack::WavPack "${_IMPORT_PREFIX}/lib/libwavpack.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
