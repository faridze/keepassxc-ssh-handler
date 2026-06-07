@echo off
setlocal

set TARGET=%LOCALAPPDATA%\KeePassSSHHandler

echo Installing to: %TARGET%

if not exist "%TARGET%" mkdir "%TARGET%"

copy /Y ssh-handler.vbs "%TARGET%\" >nul
copy /Y ssh-handler.ps1 "%TARGET%\" >nul

reg add HKCU\Software\Classes\ssh /ve /d "SSH Protocol" /f >nul
reg add HKCU\Software\Classes\ssh /v "URL Protocol" /d "" /f >nul
reg add HKCU\Software\Classes\ssh\shell\open\command /ve /d "\"%SystemRoot%\System32\wscript.exe\" \"%TARGET%\ssh-handler.vbs\" \"%%1\"" /f >nul

echo.
echo Installation complete.
echo Test with: ssh://root@1.2.3.4:22
pause
