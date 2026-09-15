@echo off
CLS&@TITLE Tâches Post-Setup
rem diskpart /s "%WINDIR%\Setup\Files\extend.txt"
"%WINDIR%\Setup\Files\7z2603.exe" /S /D="C:\Program Files\7-Zip"
rem cd "%WINDIR%\Setup\Files\"
rem "C:\Program Files\7-Zip\7z.exe" x windows6.1-kb2533552-x86.msu
rem DISM /Online /Add-Package /PackagePath:"%WINDIR%\Setup\Files\Windows6.1-KB2533552-x86.cab"
rem %WINDIR%\Setup\Files\windows-kb890830-v5.145.exe /quiet
%WINDIR%\Setup\Files\MAS_AIO.cmd /Z-Windows /S
rem "%WINDIR%\Setup\Files\winrar-x32-701fr.exe" /S
rem "%WINDIR%\Setup\Files\KexSetup_Release_1_2_1_2229.exe" /SILENTUNATTEND
rem "C:\Program Files\VxKex\KexCfg.exe" /EXE:"%WINDIR%\Setup\Files\Firefox Setup 155.0.1.exe" /ENABLE:1 /WINVERSPOOF:WIN10
rem "%WINDIR%\Setup\Files\Firefox Setup 115.40.0esr.exe" /S"
rem "C:\Program Files\VxKex\KexCfg.exe" /EXE:"C:\Program Files\Mozilla Firefox\firefox.exe" /ENABLE:1 /WINVERSPOOF:WIN10
rem "C:\Program Files\VxKex\KexCfg.exe" /EXE:"C:\Program Files\Mozilla Firefox\crashhelper.exe" /ENABLE:1 /WINVERSPOOF:WIN10
rem "C:\Program Files\VxKex\KexCfg.exe" /EXE:"C:\Program Files\Mozilla Firefox\crashreporter.exe" /ENABLE:1 /WINVERSPOOF:WIN10
rem "C:\Program Files\VxKex\KexCfg.exe" /EXE:"C:\Program Files\Mozilla Firefox\maintenanceservice.exe" /ENABLE:1 /WINVERSPOOF:WIN10
rem "C:\Program Files\VxKex\KexCfg.exe" /EXE:"C:\Program Files\Mozilla Firefox\maintenanceservice_installer.exe" /ENABLE:1 /WINVERSPOOF:WIN10
rem "C:\Program Files\VxKex\KexCfg.exe" /EXE:"C:\Program Files\Mozilla Firefox\nmhproxy.exe" /ENABLE:1 /WINVERSPOOF:WIN10
rem "C:\Program Files\VxKex\KexCfg.exe" /EXE:"C:\Program Files\Mozilla Firefox\pingsender.exe" /ENABLE:1 /WINVERSPOOF:WIN10
rem "C:\Program Files\VxKex\KexCfg.exe" /EXE:"C:\Program Files\Mozilla Firefox\plugin-container.exe" /ENABLE:1 /WINVERSPOOF:WIN10
rem "C:\Program Files\VxKex\KexCfg.exe" /EXE:"C:\Program Files\Mozilla Firefox\private_browsing.exe" /ENABLE:1 /WINVERSPOOF:WIN10
rem "C:\Program Files\VxKex\KexCfg.exe" /EXE:"C:\Program Files\Mozilla Firefox\updater.exe" /ENABLE:1 /WINVERSPOOF:WIN10
rem REG ADD "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableAppUpdate" /t REG_DWORD /d 1 /f
del /q /f "%~f0"
rd /q /s "%WINDIR%\Setup\Files"
del /q /f "%0"
