# Install script for directory: F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/zlib/src/v1.3.1-2e5db616bf.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/pkgs/zlib_x64-windows")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/pkgs/zlib_x64-windows/lib/zlib.lib")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/pkgs/zlib_x64-windows/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/zlib/x64-windows-rel/zlib.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/pkgs/zlib_x64-windows/bin/zlib1.dll")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/pkgs/zlib_x64-windows/bin" TYPE SHARED_LIBRARY FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/zlib/x64-windows-rel/zlib1.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/pkgs/zlib_x64-windows/include/zconf.h;F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/pkgs/zlib_x64-windows/include/zlib.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/pkgs/zlib_x64-windows/include" TYPE FILE FILES
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/zlib/x64-windows-rel/zconf.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/zlib/src/v1.3.1-2e5db616bf.clean/zlib.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/zlib/x64-windows-rel/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
