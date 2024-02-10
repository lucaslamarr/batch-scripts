@echo off

set project_file_name=NewProject

set default_file_name=main
set file_type_extension=.c
set full_file_name=%default_file_name%%file_type_extension%

set application_name=new-project
set extension_type=.exe

if not exist %project_file_name% mkdir %project_file_name%
pushd %project_file_name%

mkdir build
mkdir misc
mkdir source
mkdir res

pushd source
echo #include^<stdio.h^> > %full_file_name%
echo int main() >> %full_file_name%
echo { >> %full_file_name%
echo		printf("Testing"); >> %full_file_name%
echo		scanf_s("."); >> %full_file_name%
echo		return 0; >> %full_file_name%
echo } >> %full_file_name%
popd 

pushd misc 
echo @echo off> build.bat

echo set source_path=..\source\>> build.bat
echo set build_path=..\build\>> build.bat

echo set file_to_run=*>> build.bat
echo set file_type_extension=.c>> build.bat
echo set full_file_name=%%file_to_run%%%%file_type_extension%%>> build.bat

echo set application_name=program>> build.bat
echo set extension_type=.exe>> build.bat

echo if not exist %%build_path%% mkdir %%build_path%%>> build.bat
echo pushd %%build_path%%>> build.bat
echo gcc %%source_path%%%%full_file_name%% -o %%application_name%%%%extension_type%%>> build.bat
echo popd>> build.bat

popd






