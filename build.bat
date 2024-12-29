@echo off
setlocal EnableDelayedExpansion

if not exist "build" (
    mkdir "build"
)

set SRC_FILES=
for %%f in (source\*.c) do (
    set SRC_FILES=!SRC_FILES! %%f
)

gcc -o "build\program.exe" !SRC_FILES! -lkernel32 -luser32 -lgdi32

if %errorlevel% neq 0 (
    echo Build failed with error code %errorlevel%
) else (
    echo Build succeeded
    build\program.exe
)

pause
endlocal
