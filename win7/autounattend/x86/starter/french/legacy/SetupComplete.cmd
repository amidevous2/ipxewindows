@echo off
CLS&@TITLE Tâches Post-Setup
"%WINDIR%\Setup\Files\7z2603.exe" /S /D="C:\Program Files\7-Zip"
cd "%WINDIR%\Setup\Files\"
"C:\Program Files\7-Zip\7z.exe" x windows6.1-kb2533552-x86.msu
DISM /Online /Add-Package /PackagePath:"%WINDIR%\Setup\Files\Windows6.1-KB2533552-x86.cab"
%WINDIR%\Setup\Files\windows-kb890830-v5.145.exe /quiet
%WINDIR%\Setup\Files\MAS_AIO.cmd /Z-Windows /S
"%WINDIR%\Setup\Files\winrar-x32-701fr.exe" /S
"C:\Program Files\7-Zip\7z.exe" x "%WINDIR%\Setup\Files\KexSetup_Debug_1_2_1_2229.exe"
mkdir "C:\Program Files\VxKex"
mkdir "C:\Program Files\Kex32"
xcopy /E /I /Y "%WINDIR%\Setup\Files\Core" "C:\Program Files\VxKex"
xcopy /E /I /Y "%WINDIR%\Setup\Files\Core32" "C:\Program Files\VxKex"
xcopy /E /I /Y "%WINDIR%\Setup\Files\Kex32" "C:\Program Files\VxKex\Kex32"
regsvr32.exe /s "C:\Program Files\VxKex\KexShlEx.dll"
for /f "tokens=2*" %%a in ('reg query "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v Path') do reg add "HKLM\System\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_EXPAND_SZ /d "%%b;C:\Program Files\VxKex" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Firefox Setup 155.0.1.exe" /v "KExEnabled" /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Firefox Setup 155.0.1.exe" /v "KExSubsystemVersion" /t REG_DWORD /d 60003 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Firefox Setup 155.0.1.exe" /v "KExReportOSVersion" /t REG_DWORD /d 100 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Firefox Setup 155.0.1.exe" /v "VerifierDlls" /t REG_SZ /d "KExDll.dll" /f
"%WINDIR%\Setup\Files\Firefox Setup 155.0.1.exe" /S
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\firefox.exe" /v "KExEnabled" /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\firefox.exe" /v "KExSubsystemVersion" /t REG_DWORD /d 60003 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\firefox.exe" /v "KExReportOSVersion" /t REG_DWORD /d 100 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\firefox.exe" /v "VerifierDlls" /t REG_SZ /d "KExDll.dll" /f
REG ADD "HKLM\SOFTWARE\Policies\Mozilla\Firefox" /v "DisableAppUpdate" /t REG_DWORD /d 1 /f
del /q /f "%~f0"
rd /q /s "%WINDIR%\Setup\Files"
del /q /f "%0"
