@echo off
cd /d "%~dp0"
echo.
echo ����ж��...
echo.
echo ж��ǰ����ر�����Ѵ����ͼƬ��
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
echo ������� by ��Ȼ���� @ www.PortableSoft.org
echo.
pause