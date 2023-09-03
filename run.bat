@echo off
cls
if exist build (
	pushd build
	start program.exe
)
popd


