@echo off

REM Change current directory and drive to where this script is.
cd /d %~dp0

REM list the attached android devices
adb.exe devices


