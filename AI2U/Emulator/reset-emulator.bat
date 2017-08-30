@echo off

REM  "reset-emulator" The emulator by removing the user specific copy of
REM  Appinventor-emulator-data. The next time the emulator is run
REM  a new fresh copy will be used.

REM Change current directory and drive to where this script is.
cd /d %~dp0

REM create the user directory for App Inventor
call :SetAppinvDir "%HOMEPATH%"
if not exist %APPINVDIR% md %APPINVDIR%

REM set the emulator directory if necessary
set EMUDIR=%APPINVDIR%\emulator
if not exist %EMUDIR% md %EMUDIR%

REM install the prebuilt user data image
set EMDATA=Appinventor-emulator-data
set DATAFILE=%EMUDIR%\%EMDATA%
if exist %DATAFILE% del /f /q %DATAFILE%

goto :EOF

REM ----------
:SetAppinvDir
REM Sub-routine called above to set the App Inventor user directory.
REM Parameter 1: The content %HOMEPATH%
REM The "%~s1" notation below converts the argument to its short form,
REM thus preventing us from having any spaces in the path used.
set APPINVDIR=%~s1\.appinventor

