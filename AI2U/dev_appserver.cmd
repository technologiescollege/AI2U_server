@echo off
rem Copyright 2009 Google Inc. All Rights Reserved.

rem Launches the Development AppServer.  This utility allows developers
rem to test a Google App Engine application on their local workstation.

cd /d %~dp0
set ai2upath=%CD%
set AEJSDK=.\AppEngine

"%ai2upath%\JDK\bin\java" -cp "%ai2upath%\AppEngine\lib\appengine-tools-api.jar" ^
    com.google.appengine.tools.KickStart ^
       com.google.appengine.tools.development.DevAppServerMain %*
