Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "cmd /c ""%WINDIR%\Setup\Files\SetupComplete2.cmd""", 0, False
