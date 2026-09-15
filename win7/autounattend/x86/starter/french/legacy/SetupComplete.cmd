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
echo "remove Scripts Folder"
rd /q /s "%WINDIR%\Setup\Scripts"

timeout /t 30
echo "remove update folder"
rd /q /s "%WINDIR%\Setup\Updates"

timeout /t 30echo "remove start script"
del /q /f "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\SetupReboot.cmd"
timeout /t 30
rem echo "remove File folder"
rem rd /q /s "%WINDIR%\Setup\Files"
rem timeout /t 30

rd /q /s "%WINDIR%\Setup"
