# Install script for directory: F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/bzip2/src/bzip2-1-336d4794a3.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/pkgs/bzip2_x64-windows-static")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/bzip2/x64-windows-static-rel/bz2.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/bzip2" TYPE EXECUTABLE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/bzip2/x64-windows-static-rel/bzip2.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/bzip2/x64-windows-static-rel/CMakeFiles/bzip2.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/bzip2" TYPE EXECUTABLE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/bzip2/x64-windows-static-rel/bzip2recover.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  include("F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/bzip2/x64-windows-static-rel/CMakeFiles/bzip2recover.dir/install-cxx-module-bmi-Release.cmake" OPTIONAL)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/bzip2/src/bzip2-1-336d4794a3.clean/bzlib.h")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/x64-windows-static/vcpkg/blds/bzip2/x64-windows-static-rel/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
