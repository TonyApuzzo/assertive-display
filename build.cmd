::
:: Create the Magisk Module installable Zip archive.
::
ECHO off

:: Full path to this script
SET _mypath=%~dp0

:: Name of this directory (which is the module name)
FOR %%G IN (%_mypath:~0,-1%) DO SET _mydir=%%~nG

:: Name of archive to create
SET _archive="%_mypath%%_mydir%.zip"

:: Remove the archive since we don't want deleted/renamed files in the archive
del "%_archive%"

:: Change the working directory
pushd "%_mypath%"

:: 7zip syntax is ugly
::     Add to archive
::     |  Zip format
::     |  |     Maximum compression
::     |  |     |     Use Unicode filenames
::     |  |     |     |       Recursive
::     |  |     |     |       |  Case sensitive
::     |  |     |     |       |  |    Exclude files matching *~
::     |  |     |     |       |  |    |
7z.exe a -tzip -mx=9 -mcu=on -r -ssc -x!*~ -- "%_archive%" .\common\ .\META-INF\ .\system\ .\config.sh .\module.prop .\README.md

:: Restore the working directory
popd
