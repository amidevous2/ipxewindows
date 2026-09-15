@echo off
wpeinit
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
net start dnscache
wmic nicconfig where (IPEnabled=TRUE) call SetDNSServerSearchOrder ()
wmic nicconfig where (IPEnabled=TRUE) call SetDNSServerSearchOrder ("8.8.8.8")
wmic nicconfig where (IPEnabled=TRUE) call SetDNSServerSearchOrder ("8.8.8.8", "8.8.4.4")
ipconfig /flushdns
wpeutil WaitForNetwork
echo select disk 0 > config.txt
echo clean >> config.txt
echo convert mbr >> config.txt
echo create partition primary size=100 >> config.txt
echo format fs=ntfs quick label="System" >> config.txt
echo active >> config.txt
echo create partition primary >> config.txt
echo format fs=ntfs quick label="Windows" >> config.txt
echo assign letter=W >> config.txt
echo shrink desired=15360 >> config.txt
echo create partition primary size=15360 >> config.txt
echo format fs=ntfs quick label="INSTALL" >> config.txt
echo assign letter=S >> config.txt
echo exit >> config.txt
diskpart /s config.txt
echo "liste des partition"
echo list disk > list.txt
echo exit >> list.txt
diskpart /s list.txt
ping -n 1 google.fr
wget --no-check-certificate https://github.com/amidevous2/ipxewindows/releases/download/windows7/win7minimultix86.7z -O S:\win7minimultix86.7z
7z x -y S:\win7minimultix86.7z -oS:\
wget --no-check-certificate https://github.com/amidevous2/ipxewindows/releases/download/windows7/starterx86.swm -O S:\sources\install.swm
wget --no-check-certificate https://github.com/amidevous2/ipxewindows/releases/download/windows7/starterx862.swm -O S:\sources\install2.swm
wget --no-check-certificate https://github.com/amidevous2/ipxewindows/releases/download/windows7/starterx863.swm -O S:\sources\install3.swm
wget --no-check-certificate https://github.com/amidevous2/ipxewindows/releases/download/windows7/starterx864.swm -O s:\sources\install4.swm
wget --no-check-certificate https://github.com/amidevous2/ipxewindows/releases/download/windows7/starterx865.swm -O S:\sources\install5.swm
wget --no-check-certificate https://github.com/amidevous2/ipxewindows/releases/download/windows7/starterx866.swm -O S:\sources\install6.swm
wget --no-check-certificate https://github.com/amidevous2/ipxewindows/releases/download/windows7/starterx867.swm -O S:\sources\install7.swm
wget --no-check-certificate https://github.com/amidevous2/ipxewindows/raw/refs/heads/main/win7/autounattend/x86/starter/french/legacy/autounattend.xml -O S:\autounattend.xml
dism /export-image /sourceimagefile:S:\sources\install.swm /swmfile:S:\sources\install*.swm /sourceindex:1 /destinationimagefile:S:\sources\install.wim /Compress:max /CheckIntegrity
del /f S:\sources\install.swm
del /f S:\sources\install2.swm
del /f S:\sources\install3.swm
del /f S:\sources\install4.swm
del /f S:\sources\install5.swm
del /f S:\sources\install6.swm
del /f S:\sources\install7.swm
del /f S:\win7minimultix86.7z
mkdir "S:\sources\$OEM$\"
mkdir "S:\sources\$OEM$\$$\"
mkdir "S:\sources\$OEM$\$$\Setup\"
mkdir "S:\sources\$OEM$\$$\Setup\Files"
mkdir "S:\sources\$OEM$\$$\Setup\Scripts"
wget --no-check-certificate "https://github.com/ip7z/7zip/releases/download/26.03/7z2603.exe" -O "S:\sources\$OEM$\$$\Setup\Files\7z2603.exe"
wget --no-check-certificate "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x32-701fr.exe" -O "S:\sources\$OEM$\$$\Setup\Files\winrar-x32-701fr.exe"
wget --no-check-certificate "https://dev.azure.com/massgrave/Microsoft-Activation-Scripts/_apis/git/repositories/Microsoft-Activation-Scripts/items?path=/MAS/All-In-One-Version-KL/MAS_AIO.cmd&download=true" -O "S:\sources\$OEM$\$$\Setup\Files\MAS_AIO.cmd"
wget --no-check-certificate "https://catalog.s.download.windowsupdate.com/msdownload/update/software/crup/2011/05/windows6.1-kb2533552-x86_f2061d1c40b34f88efbe55adf6803d278aa67064.msu" -O "S:\sources\$OEM$\$$\Setup\Files\windows6.1-kb2533552-x86.msu"
wget --no-check-certificate "https://catalog.s.download.windowsupdate.com/d/msdownload/update/software/uprl/2026/09/windows-kb890830-v5.145_6c373e8ded862ef5c962500b945a812317c486f4.exe" -O "S:\sources\$OEM$\$$\Setup\Files\windows-kb890830-v5.145.exe"
wget --no-check-certificate "https://github.com/i486/VxKex/releases/download/Version1.2.1.2229/KexSetup_Debug_1_2_1_2229.exe" -O "S:\sources\$OEM$\$$\Setup\Files\KexSetup_Debug_1_2_1_2229.exe"
wget --no-check-certificate "https://ftp.mozilla.org/pub/firefox/releases/115.40.0esr/win32/fr/Firefox Setup 115.40.0esr.exe" -O "S:\sources\$OEM$\$$\Setup\Files\Firefox Setup 115.40.0esr.exe"
wget --no-check-certificate "https://raw.githubusercontent.com/amidevous2/ipxewindows/1c971bbd1c2b63c98922b3f75722f40c99b1cae7/win7/autounattend/x86/starter/french/legacy/SetupComplete.cmd" -O "S:\sources\$OEM$\$$\Setup\Scripts\SetupComplete.cmd"
wget --no-check-certificate https://raw.githubusercontent.com/amidevous2/ipxewindows/refs/heads/main/win7/autounattend/x86/starter/french/legacy/extend.txt -O "S:\sources\$OEM$\$$\Setup\Files\extend.txt"
wget --no-check-certificate https://raw.githubusercontent.com/amidevous2/ipxewindows/1bc2a380c3511264f7126c029c421b0c9c407ad8/win7/autounattend/x86/starter/french/legacy/UAC0.reg -O "S:\sources\$OEM$\$$\Setup\Files\UAC0.reg"
wget --no-check-certificate https://raw.githubusercontent.com/amidevous2/ipxewindows/b5da9483773f1d7cd5c2f48676a71c4a03195ed9/win7/autounattend/x86/starter/french/legacy/UAC5.reg -O "S:\sources\$OEM$\$$\Setup\Files\UAC5.reg"


S:\sources\setup.exe /unattend:"S:\autounattend.xml" /noreboot
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
shutdown -r -t 1
