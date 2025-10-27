Set WshShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' Get the directory where this script is located
scriptPath = fso.GetParentFolderName(WScript.ScriptFullName)

' Change to the project directory
WshShell.CurrentDirectory = scriptPath

' Start Next.js server in background (minimized)
WshShell.Run "cmd /c start /min npm run dev", 0, False

' Wait for server to start
WScript.Sleep 5000

' Start Electron app
WshShell.Run "cmd /c npm run electron", 0, False

' Exit VBScript
WScript.Quit


