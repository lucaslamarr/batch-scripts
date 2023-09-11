@echo off

set project_file_name="New Project"
set executable_name="new-project"
set default_file_name="main.c"

if not exist build mkdir %project_file_name%
pushd %project_file_name%

mkdir build
mkdir misc
mkdir source
mkdir res

pushd source
echo int main() > %default_file_name%
echo { >> %default_file_name%
echo:
echo     return 0; >> %default_file_name%
echo } >> %default_file_name%
popd 

pushd misc 
echo @echo off > build.bat
echo pushd ..\build >> build.bat
echo gcc ..\source\*.c -o %executable_name%.exe >> build.bat
popd