@echo off

REM attempt to unlock the emulator

REM Change current directory and drive to where this script is.
cd /d %~dp0

adb.exe shell input keyevent 82

