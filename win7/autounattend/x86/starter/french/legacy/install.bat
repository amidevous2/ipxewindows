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
if exist x:\Windows\System32\e1s6232.inf drvload x:\Windows\System32\e1s6232.inf
if exist x:\Windows\System32\e1d6232.inf drvload x:\Windows\System32\e1d6232.inf
if exist x:\Windows\System32\e1e6232.INF drvload x:\Windows\System32\e1e6232.INF
if exist x:\Windows\System32\e1k6232.inf drvload x:\Windows\System32\e1k6232.inf
if exist x:\Windows\System32\e1q6232.inf drvload x:\Windows\System32\e1q6232.inf
if exist x:\Windows\System32\e1r6232.inf drvload x:\Windows\System32\e1r6232.inf
if exist x:\Windows\System32\e1y6232.INF drvload x:\Windows\System32\e1y6232.INF
if exist x:\Windows\System32\ixe6232.inf drvload x:\Windows\System32\ixe6232.inf
if exist x:\Windows\System32\ixn6232.inf drvload x:\Windows\System32\ixn6232.inf
if exist x:\Windows\System32\ixs6232.inf drvload x:\Windows\System32\ixs6232.inf
if exist x:\Windows\System32\ixt6232.inf drvload x:\Windows\System32\ixt6232.inf
if exist x:\Windows\System32\sxb6232.inf drvload x:\Windows\System32\sxb6232.inf
echo ipconfig /all
ipconfig /all
rem ping 127.0.0.1 -n 31 >nul
echo "liste des carte reseaux"
rem ping 127.0.0.1 -n 31 >nul
rem ping 127.0.0.1 -n 31 >nul
rem netsh interface show interface
rem ping 127.0.0.1 -n 31 >nul
rem ping 127.0.0.1 -n 31 >nul
rem ping 127.0.0.1 -n 31 >nul
rem ipconfig /renew
rem ping 127.0.0.1 -n 31 >nul
net start dnscache
rem ping 127.0.0.1 -n 31 >nul
wmic nicconfig where (IPEnabled=TRUE) call SetDNSServerSearchOrder ()
wmic nicconfig where (IPEnabled=TRUE) call SetDNSServerSearchOrder ("8.8.8.8")
wmic nicconfig where (IPEnabled=TRUE) call SetDNSServerSearchOrder ("8.8.8.8", "8.8.4.4")
rem netsh interface ipv4 set dns name="Ethernet" static 8.8.8.8 primary
rem ping 127.0.0.1 -n 31 >nul
rem netsh interface ipv4 set winsservers name="Ethernet" static 8.8.8.8
echo ipconfig /flushdns
rem ping 127.0.0.1 -n 31 >nul
ipconfig /flushdns
rem echo ipconfig /renew
rem ping 127.0.0.1 -n 31 >nul
rem ipconfig /renew
rem ping 127.0.0.1 -n 31 >nul
echo Wait For Network
wpeutil WaitForNetwork
rem ping 127.0.0.1 -n 31 >nul
rem ping 127.0.0.1 -n 31 >nul
echo ipconfig /all
ipconfig /all
rem ping 127.0.0.1 -n 31 >nul
rem ping 127.0.0.1 -n 31 >nul
echo select disk 0 > config.txt
echo clean >> config.txt
echo convert mbr >> config.txt
echo create partition primary size=100 >> config.txt
echo format fs=ntfs quick label="System" >> config.txt
echo active >> config.txt
echo create partition primary >> config.txt
echo format fs=ntfs quick label="Windows" >> config.txt
echo assign letter=W >> config.txt
echo shrink desired=10240 >> config.txt
echo create partition primary size=10240 >> config.txt
echo format fs=ntfs quick label="INSTALL" >> config.txt
echo assign letter=S >> config.txt
echo exit >> config.txt
rem ping 127.0.0.1 -n 31 >nul
rem ping 127.0.0.1 -n 31 >nul
diskpart /s config.txt
rem ping 127.0.0.1 -n 31 >nul
rem ping 127.0.0.1 -n 31 >nul
echo "liste des partition"
rem ping 127.0.0.1 -n 31 >nul
rem ping 127.0.0.1 -n 31 >nul
echo list disk > list.txt
echo exit >> list.txt
diskpart /s list.txt
rem ping 127.0.0.1 -n 31 >nul
ping -n 1 google.fr
rem ping 127.0.0.1 -n 31 >nul
rem ping 127.0.0.1 -n 31 >nul
rem mkdir S:\Cygwin\
rem mkdir S:\Cygwin\var\
rem mkdir S:\Cygwin\var\cache\
rem mkdir S:\Cygwin\var\cache\apt\
rem mkdir S:\Cygwin\var\cache\apt\packages
rem setup-%arch1%.exe --no-admin --root S:\Cygwin\ --quiet-mode --no-shortcuts --no-startmenu --allow-unsupported-windows --arch %arch1% --force-current --no-desktop --no-replaceonreboot --no-verify --no-version-check --no-warn-deprecated-windows --no-write-registry --only-site --site %cygmirror% -l S:\Cygwin\var\cache\apt\packages --packages dos2unix,wget,ca-certificates
rem ping 127.0.0.1 -n 31 >nul
rem S:\Cygwin\bin\wget.exe %giturl%/releases/download/%winversion%/%isoversionmin%min%arch1%.iso -O S:\%isoversionmin%min%arch1%.iso
wget --no-check-certificate %giturl%/releases/download/%winversion%/%isoversionmin%min%arch1%.iso -O S:\%isoversionmin%min%arch1%.iso
rem ping 127.0.0.1 -n 31 >nul
7z x -y S:\%isoversionmin%min%arch1%.iso -oS:\
rem ping 127.0.0.1 -n 31 >nul
wget --no-check-certificate %giturl%/releases/download/%winversion%/install.swm -O S:\sources\install.swm
rem ping 127.0.0.1 -n 31 >nul
wget --no-check-certificate %giturl%/releases/download/%winversion%/install2.swm -O S:\sources\install2.swm
rem ping 127.0.0.1 -n 31 >nul
wget --no-check-certificate %giturl%/releases/download/%winversion%/install3.swm -O S:\sources\install3.swm
rem ping 127.0.0.1 -n 31 >nul
wget --no-check-certificate %giturl%/releases/download/%winversion%/install4.swm -O s:\sources\install4.swm
rem ping 127.0.0.1 -n 31 >nul
wget --no-check-certificate %giturl%/releases/download/%winversion%/install5.swm -O S:\sources\install5.swm
rem ping 127.0.0.1 -n 31 >nul
wget --no-check-certificate %giturl%/raw/refs/heads/main/win7/autounattend/x86/starter/french/legacy/autounattend.xml -O S:\autounattend.xml
dism /export-image /sourceimagefile:S:\sources\install.swm /swmfile:S:\sources\install*.swm /sourceindex:1 /destinationimagefile:S:\sources\install.wim /Compress:max /CheckIntegrity
del /f S:\sources\install.swm
del /f S:\sources\install2.swm
del /f S:\sources\install3.swm
del /f S:\sources\install4.swm
del /f S:\sources\install5.swm
rem ping 127.0.0.1 -n 31 >nul
S:\sources\setup.exe /unattend:"S:\autounattend.xml" /noreboot
if %gitbcommit%==win10 Dism /Image:C:\ /enable-feature /featurename:NetFx3 /All /Source:"D:\sources\sxs" /LimitAccess /NoRestart /LogLevel:4
rem ping 127.0.0.1 -n 31 >nul
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
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
ping 127.0.0.1 -n 31 >nul
shutdown -r -t 1
