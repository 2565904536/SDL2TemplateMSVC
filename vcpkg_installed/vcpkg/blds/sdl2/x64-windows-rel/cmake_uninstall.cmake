if (NOT EXISTS "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-rel/install_manifest.txt")
    message(FATAL_ERROR "Cannot find install manifest: \"F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-rel/install_manifest.txt\"")
endif(NOT EXISTS "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-rel/install_manifest.txt")

file(READ "F:/Han iLan/Documents/2024shortSemester/SDL2TemplateMSVC/vcpkg_installed/vcpkg/blds/sdl2/x64-windows-rel/install_manifest.txt" files)
string(REGEX REPLACE "\n" ";" files "${files}")
foreach (file ${files})
    message(STATUS "Uninstalling \"$ENV{DESTDIR}${file}\"")
    execute_process(
        COMMAND D:/winlibs-x86_64-posix-seh-gcc-14.1.0-llvm-18.1.5-mingw-w64ucrt-11.0.1-r1/bin/cmake.exe -E remove "$ENV{DESTDIR}${file}"
        OUTPUT_VARIABLE rm_out
        RESULT_VARIABLE rm_retval
    )
    if(NOT ${rm_retval} EQUAL 0)
        message(FATAL_ERROR "Problem when removing \"$ENV{DESTDIR}${file}\"")
    endif (NOT ${rm_retval} EQUAL 0)
endforeach(file)

