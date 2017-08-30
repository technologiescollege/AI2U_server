@echo off

REM kill and restart the adb server

REM Change current directory and drive to where this script is.
cd /d %~dp0

adb.exe kill-server
adb.exe start-server




