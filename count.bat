@echo off
Setlocal EnableDelayedExpansion

pushd source

echo ---------------------------------------------------
echo DISPLAYING LINE COUNTS FOR ALL REQUESTED FILE TYPES 
echo ---------------------------------------------------
echo:

find /v /c "" *.c
set "cmd=findstr /R /N "^^" *.c | find /C ":""
for /f %%a in ('!cmd!') do (set c_number=%%a)
echo ---------------------------------------------------
echo Total: %c_number%
echo ---------------------------------------------------
echo: 
	
find /v /c "" *.h
set "cmd=findstr /R /N "^^" *.h | find /C ":""
for /f %%a in ('!cmd!') do (set h_number=%%a)
echo ---------------------------------------------------
echo Total: %h_number%
echo ---------------------------------------------------
echo: 
echo:

set "cmd=findstr /R /N "^^" *.* | find /C ":""
for /f %%a in ('!cmd!') do set total_number=%%a
echo ---------------------------------------------------
echo Total Lines Found: %total_number%
echo ---------------------------------------------------
popd
pause >nul



