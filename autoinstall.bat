msiexec /i 7z.msi /le "7zip-log.txt" /passive /norestart TARGETDIR="C:\Program Files\7-Zip"

msiexec paint.net.exe /auto TARGETDIR="C:\Program Files\Graphics\Paint" DESKTOPSHORTCUT=1

msiexec /i inkscape-1.0-x64.msi /le "inkscape-log.txt" /qr /norestart TARGETDIR="C:\Program Files\Graphics\Inkscape"

msiexec /i Office.msi /le "libreoffice-install-log.txt"  /passive /norestart
msiexec /i Office_helppack_ru.msi /le+ "libreoffice-install-log.txt" /passive /forcerestart



msiexec /i Notepad++7.7.msi /quiet
    
    (
    echo INSTALLDIR=C:\Java\JRE
    echo WEB_JAVA=1
    echo WEB_ANALYTICS=0
    echo INSTALL_SILENT = 1
    ) > "config.cfg"
    
jre-8u251x64.exe INSTALLCFG="%cd%\config.cfg" /L "%cd%\jre-log.log" /s