@echo off
REM Start an emulator for App Inventor

REM Change current directory and drive to where this script is.
cd /d %~dp0

REM create the user directory for App Inventor  if necessary
call :SetAppinvDir "%HOMEPATH%"
if not exist %APPINVDIR% md %APPINVDIR%

REM set the emulator directory if necessary
set EMUDIR=%APPINVDIR%\emulator
if not exist %EMUDIR% md %EMUDIR%

REM install the prebuilt user data image
set EMDATA=Appinventor-emulator-data
set DATAFILE=%EMUDIR%\%EMDATA%
if not exist %DATAFILE% copy extras\%EMDATA%  %DATAFILE%

REM create the SD card
set SDCARDFILE=%EMUDIR%\sdcard.img
if not exist %SDCARDFILE% mksdcard.exe 32M %SDCARDFILE%

start /MIN emulator.exe   ^
           -kernel from-Android-SDK\platforms\android-8\images\kernel-qemu    ^
           -ramdisk from-Android-SDK\platforms\android-8\images\ramdisk.img   ^
           -system from-Android-SDK\platforms\android-8\images\system.img     ^
           -sdcard %SDCARDFILE%  ^
           -skindir from-Android-SDK\platforms\android-8\skins   ^
           -skin HVGA-AppInventor   ^
           -sysdir %TEMP%   ^
           -data %DATAFILE%    ^
           -scale 0.9 ^
           -no-boot-anim ^
		   -partition-size 256

goto :EOF

REM ----------
:SetAppinvDir
REM Sub-routine called above to set the App Inventor user directory.
REM Parameter 1: The content %HOMEPATH%
REM The "%~s1" notation below converts the argument to its short form,
REM thus preventing us from having any spaces in the path used.
set APPINVDIR=%~s1\.appinventor
