@echo off
cd /d "%~dp0"
echo.
echo 正在卸载...
echo.
echo 卸载前请务必保存好已处理的图片！
echo.
pause
reg delete "HKEY_CURRENT_USER\SOFTWARE\Evernote Corp.\Skitch" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Evernote\Skitch" /f
reg delete "HKEY_CURRENT_USER\Software\Trolltech\OrganizationDefaults\Qt Factory Cache 4.8\com.trolltech.Qt.QImageIOHandlerFactoryInterface:\%CD%" /f
reg delete "HKEY_CURRENT_USER\Software\Trolltech\OrganizationDefaults\Qt Plugin Cache 4.8.false\%CD%" /f
reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\Skitch.exe" /f
rd /s /q "%LOCALAPPDATA%\Skitch"
rd /s /q "%USERPROFILE%\Local Settings\Application Data\Skitch"
cls
echo.
echo 清理完毕 by 黯然过客 @ www.PortableSoft.org
echo.
pause