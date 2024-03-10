@echo off
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v Adobe /t REG_SZ /d "none" /f

exit
