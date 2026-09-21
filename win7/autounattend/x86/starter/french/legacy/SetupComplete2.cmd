@echo off


echo "disable UAC"
"reg" import "%WINDIR%\Setup\Files\UAC0.reg"

timeout /t 30
echo "stop windows update service"
net stop wuauserv > nul

timeout /t 30
echo "disable auto start windows update"
"reg" import "%WINDIR%\Setup\Files\winupdate1.reg" > nul
timeout /t 30

echo "remove windows update folder 1"

rd "%windir%\softwaredistribution" /s /q > nul


timeout /t 30
echo "install 7zip"
"%WINDIR%\Setup\Files\7z2603.exe" /S /D="C:\Program Files\7-Zip

"
timeout /t 30
echo "activate windows"
call %WINDIR%\Setup\Files\MAS_AIO.cmd /Z-Windows /S


echo "activate windows"
timeout /t 30
echo "install firefox"
"%WINDIR%\Setup\Files\Firefox Setup 115.40.0esr.exe" /S


mkdir "C:\Program Files\Mozilla Firefox\browser\defaults\preferences" 2>nul
echo pref("general.useragent.override", "Mozilla/5.0 (Windows NT 10.0; WOW64; rv:156.0) Gecko/20100101 Firefox/156.0"); > "C:\Program Files\Mozilla Firefox\browser\defaults\preferences\all-users.js"
(echo // & echo pref("general.useragent.override", "Mozilla/5.0 (Windows NT 10.0; WOW64; rv:156.0) Gecko/20100101 Firefox/156.0"^);) > "C:\Program Files\Mozilla Firefox\browser\defaults\preferences\all-users.js"
timeout /t 30
echo "restaure drive"
diskpart /s "%WINDIR%\Setup\Files\extend.txt"
timeout /t 30
cd "%WINDIR%\Setup\Files\"
echo "extract KB2533552"
"C:\Program Files\7-Zip\7z.exe" x windows6.1-kb2533552-x86.msu -aoa -y
timeout /t 30
echo "install KB2533552"
DISM /Online /Add-Package /PackagePath:"%WINDIR%\Setup\Files\Windows6.1-KB2533552-x86.cab"
timeout /t 30
echo "install KB890830"
%WINDIR%\Setup\Files\windows-kb890830-v5.145.exe /quiet
timeout /t 30
echo "install winrar"
"%WINDIR%\Setup\Files\winrar-x32-701fr.exe" /S
timeout /t 30
echo "stopt windows update service"
net stop wuauserv > nul


timeout /t 30
echo "remove windows update folder 2"
rd "%windir%\softwaredistribution" /s /q > nul

timeout /t 30
echo "renable UAC"
"reg" import "%WINDIR%\Setup\Files\UAC5.reg"

timeout /t 30
echo "renable windows update"
"reg" import "%WINDIR%\Setup\Files\winupdate2.reg" > nul

timeout /t 30
echo "start windows update service"
net start wuauserv > nul


timeout /t 30
cd C:\
echo "remove Scripts Folder"
rd /q /s "%WINDIR%\Setup\Scripts"

timeout /t 30
echo "remove update folder"
rd /q /s "%WINDIR%\Setup\Updates"

timeout /t 30
echo "remove start script"
del /q /f "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\SetupReboot.cmd"
timeout /t 30
rem echo "remove File folder"
rem rd /q /s "%WINDIR%\Setup\Files"
shutdown /r /t 59
rem timeout /t 30

rd /q /s "%WINDIR%\Setup"