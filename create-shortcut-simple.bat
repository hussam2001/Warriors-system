@echo off
echo Creating Desktop Shortcut with Warriors Logo...

REM Create VBScript to create desktop shortcut
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%USERPROFILE%\Desktop\Warriors Gym System.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "%~dp0start-warriors.vbs" >> CreateShortcut.vbs
echo oLink.WorkingDirectory = "%~dp0" >> CreateShortcut.vbs
echo oLink.Description = "Warriors Gym Management System" >> CreateShortcut.vbs
echo oLink.IconLocation = "%~dp0public\logo\warriors-logo.ico" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs

REM Execute the VBScript
cscript CreateShortcut.vbs

REM Clean up
del CreateShortcut.vbs

echo.
echo ✅ Desktop shortcut created successfully!
echo 📍 Location: %USERPROFILE%\Desktop\Warriors Gym System.lnk
echo 🎯 Icon: Warriors Gym Logo
echo.
echo 🚀 Double-click the desktop icon to launch the app!
echo.
pause


