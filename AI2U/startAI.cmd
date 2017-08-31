@echo off
cls
echo "Starting App Inventor 2 environtment...."
cd /d %~dp0
set ai2upath=%CD%
start /min .\buildserver.cmd
start /min .\dev_appserver.cmd --disable_update_check --port=8888 --address=0.0.0.0 AI
