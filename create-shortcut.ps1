# Create Desktop Shortcut for Warriors Gym System
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:USERPROFILE\Desktop\Warriors Gym System.lnk")
$Shortcut.TargetPath = "$PSScriptRoot\start-warriors.vbs"
$Shortcut.WorkingDirectory = "$PSScriptRoot"
$Shortcut.Description = "Warriors Gym Management System"
$Shortcut.IconLocation = "$PSScriptRoot\public\logo\warriors logo.png"
$Shortcut.Save()

Write-Host "✅ Desktop shortcut created successfully!" -ForegroundColor Green
Write-Host "📍 Location: $env:USERPROFILE\Desktop\Warriors Gym System.lnk" -ForegroundColor Cyan
Write-Host ""
Write-Host "🚀 You can now double-click the desktop icon to launch the app!" -ForegroundColor Yellow


