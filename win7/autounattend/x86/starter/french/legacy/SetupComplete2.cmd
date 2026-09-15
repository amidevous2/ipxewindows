@echo off

"%WINDIR%\Setup\Files\7z2603.exe" /S /D="C:\Program Files\7-Zip

%WINDIR%\Setup\Files\MAS_AIO.cmd /Z-Windows /S

"%WINDIR%\Setup\Files\Firefox Setup 115.40.0esr.exe" /S

del /q /f "%~f0"

rd /q /s "%WINDIR%\Setup\Files"

del /q /f "%0"
