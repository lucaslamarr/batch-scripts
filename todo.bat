@echo off
setlocal EnableDelayedExpansion

set search_term=TODO:

set workspace_folder=%CD%
set source_path=%workspace_folder%\source

pushd %source_path%
echo ----------------------------------------------------------------
echo LIST OF EVERY FILE AND LINE NUMBER THAT CONTAINS A TODO: COMMENT
echo ----------------------------------------------------------------
echo:

set "found=0"

for /r %%f in (*.c *.h) do (
    findstr /s /i /N "%search_term%" "%%f" >nul
    if not errorlevel 1 (
        findstr /s /i /N "%search_term%" "%%f"
        set "found=1"
    )
)

if !found! == 0 (
    echo No occurrences of "%search_term%" found.
)

popd
pause >nul

