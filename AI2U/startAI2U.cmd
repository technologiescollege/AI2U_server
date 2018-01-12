@echo off
cls
echo "Starting App Inventor 2 environnment...."
cd /d %~dp0
set ai2upath=%CD%
set _JAVA_OPTIONS=-Xmx512m -Xms256m -Xmx2g -XX:MaxHeapSize=512m
set JAVA_HOME="%ai2upath%\JDK\jre"
set PATH="%ai2upath%\JDK\jre\bin"
start .\buildserver.cmd
start .\dev_appserver.cmd --disable_update_check --port=8888 --address=0.0.0.0 AI