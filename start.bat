@echo off
echo Starting Warriors Gym Management System...
echo.
echo Please wait while the system initializes...
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

echo Node.js found! Starting application...
echo.

echo Installing dependencies (first time only)...
call npm install

echo.
echo Starting Warriors Gym System...
echo.
echo The system will open in your default web browser.
echo Login with:
echo   Username: admin
echo   Password: warriors2024
echo.
echo To stop the system, close this window or press Ctrl+C
echo.

start http://localhost:3000
call npm run dev

pause


