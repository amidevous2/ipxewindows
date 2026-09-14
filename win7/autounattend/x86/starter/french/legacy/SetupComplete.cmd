@echo off
CLS&@TITLE Tâches Post-Setup
"%WINDIR%\Setup\Files\7z2603.exe" /S /D="C:\Program Files\7-Zip"
cd "%WINDIR%\Setup\Files\"
"C:\Program Files\7-Zip\7z.exe" x windows6.1-kb2533552-x86.msu
DISM /Online /Add-Package /PackagePath:"%WINDIR%\Setup\Files\Windows6.1-KB2533552-x86.cab"
%WINDIR%\Setup\Files\windows-kb890830-v5.145.exe /quiet
%WINDIR%\Setup\Files\MAS_AIO.cmd /Z-Windows /S
"%WINDIR%\Setup\Files\winrar-x32-701fr.exe" /S
"%WINDIR%\Setup\Files\KexSetup_Release_1_2_1_2229.exe" /SILENTUNATTEND
"C:\Program Files\VxKex\KexCfg.exe" /EXE:"%WINDIR%\Setup\Files\Firefox Setup 155.0.1.exe" /ENABLE:1 /WINVERSPOOF:WIN10
"%WINDIR%\Setup\Files\Firefox Setup 155.0.1.exe" /S
"C:\Program Files\VxKex\KexCfg.exe" /EXE:"C:\Program Files\Mozilla Firefox\firefox.exe" /ENABLE:1 /WINVERSPOOF:WIN10
REG ADD "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableAppUpdate" /t REG_DWORD /d 1 /f
del /q /f "%~f0"
rd /q /s "%WINDIR%\Setup\Files"
del /q /f "%0"
