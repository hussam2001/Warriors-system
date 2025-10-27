@echo off
echo Creating Desktop Shortcut for Warriors Gym System...

REM Get the current directory
set "CURRENT_DIR=%~dp0"

REM Create VBScript to create desktop shortcut
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%USERPROFILE%\Desktop\Warriors Gym System.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%CURRENT_DIR%start-warriors.vbs" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%CURRENT_DIR%" >> CreateShortcut.vbs
echo oLink.Description = "Warriors Gym Management System" >> CreateShortcut.vbs
echo oLink.IconLocation = "%CURRENT_DIR%public\logo\warriors logo.png" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs

REM Execute the VBScript
cscript CreateShortcut.vbs

REM Clean up
del CreateShortcut.vbs

echo.
echo ✅ Desktop shortcut created successfully!
echo 📍 Location: %USERPROFILE%\Desktop\Warriors Gym System.lnk
echo.
echo 🚀 You can now double-click the desktop icon to launch the app!
echo.
pause


