@echo off
title Warriors Gym System
cd /d "%~dp0"

REM Hide the command prompt window
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

REM Start the application silently
start /min "" "%~dp0node_modules\.bin\electron.cmd" "%~dp0electron\main.js" --url="http://localhost:3000"

REM Wait a moment for Electron to start
timeout /t 3 /nobreak >nul

REM Exit this batch file
exit


