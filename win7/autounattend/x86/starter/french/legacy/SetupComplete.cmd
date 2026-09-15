@echo off


"reg" import "%WINDIR%\Setup\Files\UAC0.reg"

net stop wuauserv > nul

"reg" import "%WINDIR%\Setup\Files\winupdate1.reg" > nul


rd "%windir%\softwaredistribution" /s /q > nul


mkdir "C:\Users\admin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"


copy "%WINDIR%\Setup\Files\SetupReboot.cmd" "C:\Users\admin\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
