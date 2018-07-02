@echo off
cls
echo "Starting AI2 starter...."
cd /d %~dp0
set ai2upath=%CD%
set AEJSDK=.\AppEngine
start .\Emulator\connector\aiWinStarter.exe
