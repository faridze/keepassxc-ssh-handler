@echo off
reg delete HKCU\Software\Classes\ssh /f
rmdir /S /Q "%LOCALAPPDATA%\KeePassSSHHandler"

echo Uninstalled.
pause
