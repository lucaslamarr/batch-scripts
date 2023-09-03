@echo off
if not exist build mkdir build
pushd build
gcc ..\source\*.c -o program.exe
popd


