@echo off

set search_term=TODO:
set source_path=%cd%\source

pushd %source_path%
echo -----------------------------------
echo    ALL KNOWN OCCURANCES OF TODO: 
echo -----------------------------------
echo:

for /r %%f in (*.c, *.cpp, *.h, *.hpp) do (
    findstr /s /i /N "%search_term%" "%%f" >nul
    if not errorlevel 1 (
        findstr /s /i /N "%search_term%" "%%f"
    )
)

popd
pause >nul
