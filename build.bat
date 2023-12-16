@echo off

set source_path=..\source\
set build_path=..\build\

set file_to_run=*
set file_type_extension=.c
set full_file_name=%file_to_run%%file_type_extension%

set application_name=program
set extension_type=.exe

if not exist %build_path% mkdir %build_path%
pushd %build_path%
gcc %source_path%%full_file_name% -o %application_name%%extension_type%
popd


