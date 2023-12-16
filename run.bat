@echo off

set build_path=..\build\
set application_name=program
set extension_type=.exe

if exist %build_path% (
	pushd %build_path%
	start %application_name%%extension_type%
)
popd



