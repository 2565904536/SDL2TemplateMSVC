# Install script for directory: F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/pkgs/sdl2_x64-windows/debug")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/SDL2d.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/SDL2d.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE OPTIONAL FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/SDL2d.pdb")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/SDL2maind.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/SDL2main.dir/SDL2main.pdb")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake"
         "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2Targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2Targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2Targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2Targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets.cmake"
         "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2mainTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2mainTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2mainTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/SDL2Config.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/SDL2ConfigVersion.cmake"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/cmake/sdlfind.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_assert.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_atomic.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_audio.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_bits.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_blendmode.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_clipboard.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_copying.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_cpuinfo.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_egl.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_endian.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_error.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_events.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_filesystem.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_gamecontroller.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_gesture.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_guid.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_haptic.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_hidapi.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_hints.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_joystick.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_keyboard.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_keycode.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_loadso.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_locale.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_log.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_main.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_messagebox.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_metal.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_misc.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_mouse.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_mutex.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_name.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_opengl.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_opengl_glext.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_opengles.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_opengles2.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_opengles2_gl2.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_opengles2_gl2ext.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_opengles2_gl2platform.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_opengles2_khrplatform.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_pixels.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_platform.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_power.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_quit.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_rect.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_render.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_rwops.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_scancode.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_sensor.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_shape.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_stdinc.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_surface.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_system.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_syswm.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test_assert.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test_common.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test_compare.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test_crc32.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test_font.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test_fuzzer.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test_harness.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test_images.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test_log.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test_md5.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test_memory.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_test_random.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_thread.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_timer.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_touch.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_types.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_version.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_video.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/SDL_vulkan.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/begin_code.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/include/close_code.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/include/SDL2/SDL_revision.h"
    "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/include-config-debug/SDL2/SDL_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/licenses/SDL2" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/src/ase-2.30.0-3ceee4a14f.clean/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-dbg/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
