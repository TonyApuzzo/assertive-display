@ECHO off
SET _mypath=%~dp0
FOR %%G IN (%_mypath:~0,-1%) DO SET _mydir=%%~nG
7z.exe u -r -ssc -- "%_mypath%%_mydir%.zip" .\common\ .\META-INF\ .\system\ .\config.sh .\module.prop .\README.md
