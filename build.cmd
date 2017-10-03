@ECHO off

:: Full path to this script
SET _mypath=%~dp0

:: Name of this directory (which is the module name)
FOR %%G IN (%_mypath:~0,-1%) DO SET _mydir=%%~nG

:: Name of archive to update/create
SET _archive="%_mypath%%_mydir%.zip"

:: 7zip syntax is ugly
::     Update archive
::     |  Zip format
::     |  |     Maximum compression
::     |  |     |     Use Unicode filenames
::     |  |     |     |       Recursive
::     |  |     |     |       |  Case sensitive
::     |  |     |     |       |  |    Exclude files matching *~
::     |  |     |     |       |  |    |
7z.exe u -tzip -mx=9 -mcu=on -r -ssc -x!*~ -- "%_archive%" .\common\ .\META-INF\ .\system\ .\config.sh .\module.prop .\README.md
