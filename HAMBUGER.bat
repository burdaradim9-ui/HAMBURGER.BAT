@echo off
title HAMBURGER
echo Do you want to reboot the system? (Y/N)

:: The /C switch defines the keys, /N hides the prompt options
choice /c yn /n /m "Selection: "

if errorlevel 2 goto SAY_ERROR
if errorlevel 1 goto REBOOT_NOW

:REBOOT_NOW
echo Rebooting system...
shutdown /r /t 05
pause
exit

:SAY_ERROR
echo.
echo ohhhh thats why your bathroom exploded by floaties
pause
exit