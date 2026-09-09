@echo off
wpeinit
set giturl=https://github.com/amidevous2/ipxewindows
set gitbcommit=main
set winversion=windows7
set winversionmin=w7
set isoversionmin=win7
set arch1=x86
set arch2=x86
set cygmirror=https://mirrors.kernel.org/sourceware/cygwin-archive/20221123/
if exist x:\Windows\System32\e1d68x64.inf drvload x:\Windows\System32\e1d68x64.inf
if exist x:\Windows\System32\balloon.inf drvload x:\Windows\System32\balloon.inf
if exist x:\Windows\System32\netkvm.inf drvload x:\Windows\System32\netkvm.inf
if exist x:\Windows\System32\viostor.inf drvload x:\Windows\System32\viostor.inf
if exist x:\Windows\System32\VBoxGuest.inf drvload x:\Windows\System32\VBoxGuest.inf
if exist x:\Windows\System32\VBoxGuestEarlyNT.inf drvload x:\Windows\System32\VBoxGuestEarlyNT.inf
if exist x:\Windows\System32\VBoxMouse.inf drvload x:\Windows\System32\VBoxMouse.inf
if exist x:\Windows\System32\VBoxVideo.inf drvload x:\Windows\System32\VBoxVideo.inf
if exist x:\Windows\System32\VBoxVideoEarlyNT.inf drvload x:\Windows\System32\VBoxVideoEarlyNT.inf
if exist x:\Windows\System32\VBoxWddm.inf drvload x:\Windows\System32\VBoxWddm.inf
if exist x:\Windows\System32\fwcfg.inf drvload x:\Windows\System32\fwcfg.inf
if exist x:\Windows\System32\pvpanic-pci.inf drvload x:\Windows\System32\pvpanic-pci.inf
if exist x:\Windows\System32\pvpanic.inf drvload x:\Windows\System32\pvpanic.inf
if exist x:\Windows\System32\qemupciserial.inf drvload x:\Windows\System32\qemupciserial.inf
if exist x:\Windows\System32\qxldod.inf drvload x:\Windows\System32\qxldod.inf
if exist x:\Windows\System32\vioprot.inf drvload x:\Windows\System32\vioprot.inf
if exist x:\Windows\System32\viofs.inf drvload x:\Windows\System32\viofs.inf
if exist x:\Windows\System32\viogpudo.inf drvload x:\Windows\System32\viogpudo.inf
if exist x:\Windows\System32\vioinput.inf drvload x:\Windows\System32\vioinput.inf
if exist x:\Windows\System32\viorng.inf drvload x:\Windows\System32\viorng.inf
if exist x:\Windows\System32\vioser.inf drvload x:\Windows\System32\vioser.inf
if exist x:\Windows\System32\pvscsi.inf drvload x:\Windows\System32\pvscsi.inf
if exist x:\Windows\System32\vm3d.inf drvload x:\Windows\System32\vm3d.inf
if exist x:\Windows\System32\vmaudio.inf drvload x:\Windows\System32\vmaudio.inf
if exist x:\Windows\System32\vmci.inf drvload x:\Windows\System32\vmci.inf
if exist x:\Windows\System32\vmmouse.inf drvload x:\Windows\System32\vmmouse.inf
if exist x:\Windows\System32\vmusbmouse.inf drvload x:\Windows\System32\vmusbmouse.inf
if exist x:\Windows\System32\vmxnet3.inf drvload x:\Windows\System32\vmxnet3.inf
if exist x:\Windows\System32\e1c6232.inf drvload x:\Windows\System32\e1c6232.inf
ping 127.0.0.1 -n 31 >nul
ipconfig /renew
ping 127.0.0.1 -n 31 >nul
net start dnscache
ping 127.0.0.1 -n 31 >nul
netsh interface ipv4 set dns name="Ethernet" static 8.8.8.8 primary
ping 127.0.0.1 -n 31 >nul
netsh interface ipv4 set winsservers name="Ethernet" static 8.8.8.8
ping 127.0.0.1 -n 31 >nul
ipconfig /flushdns
ping 127.0.0.1 -n 31 >nul
echo Wait For Network
wpeutil WaitForNetwork
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
echo ipconfig /all
ipconfig /all
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
echo select disk 0 > config.txt
echo clean >> config.txt
echo convert mbr >> config.txt
echo create partition primary size=100 >> config.txt
echo format fs=ntfs quick label="System" >> config.txt
echo active >> config.txt
echo create partition primary >> config.txt
echo format fs=ntfs quick label="Windows" >> config.txt
echo assign letter=C >> config.txt
echo shrink desired=10240 >> config.txt
echo create partition primary size=10240 >> config.txt
echo format fs=ntfs quick label="INSTALL" >> config.txt
echo assign letter=D >> config.txt
echo exit >> config.txt
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
diskpart /s config.txt
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
if exist D:\ echo D_EXISTE
if not exist D:\ echo D_ABSENT
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping -n 1 google.fr
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
setup-%arch1%.exe --no-admin --root D:\Cygwin\ --quiet-mode --no-shortcuts --no-startmenu --allow-unsupported-windows --arch %arch1% --force-current --no-desktop --no-replaceonreboot --no-verify --no-version-check --no-warn-deprecated-windows --no-write-registry --only-site --site %cygmirror% -l D:\Cygwin\var\cache\apt\packages --packages dos2unix,wget,ca-certificates
ping 127.0.0.1 -n 31 >nul
D:\Cygwin\bin\wget.exe %giturl%/releases/download/%winversion%/%isoversionmin%min%arch1%.iso -O D:\%isoversionmin%min%arch1%.iso
ping 127.0.0.1 -n 31 >nul
7z x -y D:\%isoversionmin%min%arch1%.iso -oD:\
ping 127.0.0.1 -n 31 >nul
D:\Cygwin\bin\wget.exe %giturl%/releases/download/%winversion%/install.swm -O D:\sources\install.swm
ping 127.0.0.1 -n 31 >nul
D:\Cygwin\bin\wget.exe %giturl%/releases/download/%winversion%/install2.swm -O D:\sources\install2.swm
ping 127.0.0.1 -n 31 >nul
D:\Cygwin\bin\wget.exe %giturl%/releases/download/%winversion%/install3.swm -O D:\sources\install3.swm
ping 127.0.0.1 -n 31 >nul
D:\Cygwin\bin\wget.exe %giturl%/releases/download/%winversion%/install4.swm -O D:\sources\install4.swm
ping 127.0.0.1 -n 31 >nul
D:\Cygwin\bin\wget.exe %giturl%/releases/download/%winversion%/install5.swm -O D:\sources\install5.swm
ping 127.0.0.1 -n 31 >nul
D:\Cygwin\bin\wget.exe %giturl%/raw/refs/heads/main/win7/autounattend/x86/starter/french/legacy/autounattend.xml -O D:\autounattend.xml
ping 127.0.0.1 -n 31 >nul
D:\sources\setup.exe /unattend:"D:\autounattend.xml" /noreboot
if %gitbcommit%==win10 Dism /Image:C:\ /enable-feature /featurename:NetFx3 /All /Source:"D:\sources\sxs" /LimitAccess /NoRestart /LogLevel:4
ping 127.0.0.1 -n 31 >nul
if exist x:\Windows\System32\e1d68x64.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\e1d68x64.inf
if exist x:\Windows\System32\balloon.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\balloon.inf
if exist x:\Windows\System32\netkvm.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\netkvm.inf
if exist x:\Windows\System32\viostor.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\viostor.inf
if exist x:\Windows\System32\VBoxGuest.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\VBoxGuest.inf
if exist x:\Windows\System32\VBoxGuestEarlyNT.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\VBoxGuestEarlyNT.inf
if exist x:\Windows\System32\VBoxMouse.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\VBoxMouse.inf
if exist x:\Windows\System32\VBoxVideo.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\VBoxVideo.inf
if exist x:\Windows\System32\VBoxVideoEarlyNT.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\VBoxVideoEarlyNT.inf
if exist x:\Windows\System32\VBoxWddm.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\VBoxWddm.inf
if exist x:\Windows\System32\fwcfg.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\fwcfg.inf
if exist x:\Windows\System32\pvpanic-pci.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\pvpanic-pci.inf
if exist x:\Windows\System32\pvpanic.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\pvpanic.inf
if exist x:\Windows\System32\qemupciserial.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\qemupciserial.inf
if exist x:\Windows\System32\qxldod.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\qxldod.inf
if exist x:\Windows\System32\vioprot.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\vioprot.inf
if exist x:\Windows\System32\viofs.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\viofs.inf
if exist x:\Windows\System32\viogpudo.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\viogpudo.inf
if exist x:\Windows\System32\vioinput.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\vioinput.inf
if exist x:\Windows\System32\viorng.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\viorng.inf
if exist x:\Windows\System32\vioser.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\vioser.inf
if exist x:\Windows\System32\pvscsi.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\pvscsi.inf
if exist x:\Windows\System32\vm3d.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\vm3d.inf
if exist x:\Windows\System32\vmaudio.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\vmaudio.inf
if exist x:\Windows\System32\vmci.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\vmci.inf
if exist x:\Windows\System32\vmmouse.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\vmmouse.inf
if exist x:\Windows\System32\e1c6232.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\e1c6232.inf
if exist x:\Windows\System32\vmusbmouse.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\vmusbmouse.inf
if exist x:\Windows\System32\vmxnet3.inf Dism /Image:C:\ /Add-Driver /Driver:X:\Windows\System32\vmxnet3.inf
ping 127.0.0.1 -n 31 >nul
shutdown -r -t 1
