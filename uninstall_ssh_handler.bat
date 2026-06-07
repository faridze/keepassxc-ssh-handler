@echo off

echo Removing SSH protocol handler...

reg delete HKCU\Software\Classes\ssh /f

echo.
echo Handler removed.

echo.
echo Installed files remain in:
echo %LOCALAPPDATA%\KeePassSSHHandler

pause
