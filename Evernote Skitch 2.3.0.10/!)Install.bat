@echo off
cd /d "%~dp0"
echo.
echo 正在绿化...
reg add "HKEY_CURRENT_USER\SOFTWARE\Evernote Corp.\Skitch" /v "Language" /d "zh_CN" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Evernote Corp.\Skitch" /v "Location" /d "%CD%" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Evernote Corp.\Skitch" /v "Version" /d "2.3.0.10" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Evernote\Skitch" /v "StayLogIn" /d "true" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Skitch.exe" /ve /d "%CD%\Skitch.exe" /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Skitch.exe" /v "Path" /d "%CD%" /f
cls
echo.
echo 绿化完毕 by 黯然过客 @ www.PortableSoft.org
echo.
pause