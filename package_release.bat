@echo off





REM This is a mockup of how I package my Quark Lib project and should be modified to fit your needs.








REM Set the name of the folder where your release build / package will be stored.

set "release_package_dir=release_package"

REM Change to the directory where you want to create the release folder.
REM In this case, I want to put it up one level.

cd..

REM Create the directory at this location if it does not already exist.
REM If the directory does exist, you will be prompted to overwrite the contents.

if not exist %release_package_dir% mkdir %release_package_dir%

REM Change directories to where you want to start copying from here. 

REM Start copying individual files or entire directories as needed.

xcopy source\* %release_package_dir%\source\ /e
xcopy change_log.txt %release_package_dir% 
xcopy quark-lib-demo.exe %release_package_dir% 

REM Delete anything that should not be included in the release package.

cd %release_package_dir%

rmdir /s /q "source\unstable" 