@echo off
echo Running demo...

mkdir "%APPDATA%\WindowsHelperDemo" 2>nul
echo Demo run at %date% %time% >> "%APPDATA%\WindowsHelperDemo\log.txt"

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v WindowsHelperDemo /t REG_SZ /d notepad.exe /f

start notepad.exe