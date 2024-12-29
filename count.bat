@echo off
Setlocal EnableDelayedExpansion

set source_path=%cd%\source

set c_number=0
set h_number=0
set total_number=0
set c_file_count=0
set h_file_count=0
set total_file_count=0

echo Reading Source Files...
echo.

for /r %source_path% %%f in (*.c) do (
    echo Found: %%f
    set "cmd=findstr /R /N "^^" "%%f" | find /C ":""
    for /f %%a in ('!cmd!') do (
        set /a c_number+=%%a
    )
    set /a c_file_count+=1
)

echo.
echo ---------------------------------------------------
echo .c File Count: %c_file_count%
echo .c Line Count: %c_number%
echo ---------------------------------------------------
echo.

echo Reading Header Files...
echo.

for /r %source_path% %%f in (*.h) do (
    echo Found: %%f
    set "cmd=findstr /R /N "^^" "%%f" | find /C ":""
    for /f %%a in ('!cmd!') do (
        set /a h_number+=%%a
    )
    set /a h_file_count+=1
)

echo.
echo ---------------------------------------------------
echo .h Line Count: %h_file_count%
echo .h Line Count: %h_number%
echo ---------------------------------------------------
echo.

echo Calculating Totals...

for /r %source_path% %%f in (*) do (
    set "cmd=findstr /R /N "^^" "%%f" | find /C ":""
    for /f %%a in ('!cmd!') do (
        set /a total_number+=%%a
    )
    set /a total_file_count+=1
)

echo.
echo ---------------------------------------------------
echo Total Files: %total_file_count%
echo Total Lines: %total_number%
echo ---------------------------------------------------

pause >nul
