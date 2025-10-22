@echo off
:: Reset DNS to automatic using netsh for Windows
title Reset DNS to Automatic - Windows

:: Get active network interface name
for /f "tokens=1,* delims=:" %%i in ('netsh interface show interface ^| find "Connected"') do (
    set iface=%%j
)
set iface=%iface:~1%

echo Resetting DNS for %iface% to automatic...
netsh interface ip set dns name="%iface%" dhcp
echo Done!
pause
