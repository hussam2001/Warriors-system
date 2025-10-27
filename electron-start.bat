@echo off
echo Starting Warriors Gym Management System - Desktop App...
echo.

cd /d "%~dp0"

echo Checking if Node.js is installed...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed!
    echo.
    echo Please install Node.js from: https://nodejs.org/
    echo Download the LTS version and restart your computer.
    echo.
    pause
    exit /b 1
)

echo Node.js found! Starting desktop application...
echo.

echo Installing dependencies (first time only)...
call npm install

echo.
echo Starting Warriors Gym Desktop App...
echo.
echo The desktop application will open automatically.
echo Login with:
echo   Username: admin
echo   Password: warriors2024
echo.
echo To stop the application, close the window or press Ctrl+C
echo.

call npm run electron-dev

pause


