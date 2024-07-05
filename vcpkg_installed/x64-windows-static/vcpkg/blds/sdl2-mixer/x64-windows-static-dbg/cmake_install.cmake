# Install script for directory: F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/pkgs/sdl2-mixer_x64-windows-static/debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "OFF")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/x64-windows-static-dbg/SDL2_mixer-staticd.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/include/SDL_mixer.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer" TYPE FILE FILES
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/x64-windows-static-dbg/SDL2_mixerConfig.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/x64-windows-static-dbg/SDL2_mixerConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer" TYPE FILE FILES
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/cmake/PkgConfigHelper.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/cmake/FindFLAC.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/cmake/FindFluidSynth.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/cmake/Findgme.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/cmake/Findlibxmp.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/cmake/Findlibxmp-lite.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/cmake/Findmodplug.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/cmake/Findmpg123.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/cmake/FindOpusFile.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/cmake/Findtremor.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/cmake/FindVorbis.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/cmake/Findwavpack.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer/SDL2_mixer-static-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer/SDL2_mixer-static-targets.cmake"
         "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/x64-windows-static-dbg/CMakeFiles/Export/97cddd3d921342b27159922255cdc1b6/SDL2_mixer-static-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer/SDL2_mixer-static-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer/SDL2_mixer-static-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/x64-windows-static-dbg/CMakeFiles/Export/97cddd3d921342b27159922255cdc1b6/SDL2_mixer-static-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/x64-windows-static-dbg/CMakeFiles/Export/97cddd3d921342b27159922255cdc1b6/SDL2_mixer-static-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  
        # FIXME: use file(COPY_FILE) if minimum CMake version >= 3.21
        execute_process(COMMAND "${CMAKE_COMMAND}" -E copy_if_different
            "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/x64-windows-static-dbg/SDL2_mixer-Debug.pc"
            "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/x64-windows-static-dbg/SDL2_mixer.pc")
        file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig"
            TYPE FILE
            FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/x64-windows-static-dbg/SDL2_mixer.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "library" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2_mixer" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-mixer/x64-windows-static-dbg/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
