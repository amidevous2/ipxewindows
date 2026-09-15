@echo off

"reg" import "%WINDIR%\Setup\Files\UAC0.reg"
net stop wuauserv > nul
"reg" import "%WINDIR%\Setup\Files\winupdate1.reg" > nul

rd "%windir%\softwaredistribution" /s /q > nul

"%WINDIR%\Setup\Files\7z2603.exe" /S /D="C:\Program Files\7-Zip

%WINDIR%\Setup\Files\MAS_AIO.cmd /Z-Windows /S

"%WINDIR%\Setup\Files\Firefox Setup 115.40.0esr.exe" /S

rd /q /s "%WINDIR%\Setup\Files"
rd /q /s "%WINDIR%\Setup\Scripts"
rd /q /s "%WINDIR%\Setup\Updates"
rd /q /s "%WINDIR%\Setup"
del /q /f "C:\Users\admin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\SetupReboot.cmd"
