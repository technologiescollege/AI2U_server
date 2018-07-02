@echo off
cls
echo "Starting App Inventor 2 environnment...."
cd /d %~dp0
set ai2upath=%CD%
set AEJSDK=.\AppEngine
start .\buildserver.cmd
start .\Emulator\connector\aiWinStarter.exe
start .\dev_appserver.cmd --disable_update_check --port=8888 --address=0.0.0.0 AI