# Install script for directory: F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/src/ease-2.8.2-89b2ee6bc2.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/pkgs/sdl2-image_x64-windows-static/debug")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/x64-windows-static-dbg/SDL2_image-staticd.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "DEVEL" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/src/ease-2.8.2-89b2ee6bc2.clean/include/SDL_image.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/x64-windows-static-dbg/SDL2_imageConfig.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/x64-windows-static-dbg/SDL2_imageConfigVersion.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/src/ease-2.8.2-89b2ee6bc2.clean/cmake/Findlibjxl.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/src/ease-2.8.2-89b2ee6bc2.clean/cmake/Findwebp.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2_image-static-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2_image-static-targets.cmake"
         "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/x64-windows-static-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2_image-static-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2_image-static-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2_image-static-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/x64-windows-static-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2_image-static-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/x64-windows-static-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2_image-static-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  
            # FIXME: use file(COPY_FILE) if minimum CMake version >= 3.21
            execute_process(COMMAND "${CMAKE_COMMAND}" -E copy_if_different
                "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/x64-windows-static-dbg/SDL2_image-Debug.pc"
                "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/x64-windows-static-dbg/SDL2_image.pc")
            file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig"
                TYPE FILE
                FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/x64-windows-static-dbg/SDL2_image.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "library" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2_image" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/src/ease-2.8.2-89b2ee6bc2.clean/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/sdl2-image/x64-windows-static-dbg/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
