@echo off
echo Starting Warriors Gym Management System...
echo.

cd /d "%~dp0"

echo Starting Next.js development server...
start /min npm run dev

echo Waiting for server to start...
timeout /t 8 /nobreak >nul

echo Starting Electron desktop app...
npm run electron

pause


