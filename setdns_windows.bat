@echo off
:: Set DNS for Windows using netsh
:: Usage: setdns_windows.bat <DNS1> <DNS2>

if "%1"=="" (
    echo Usage: %0 <DNS1> <DNS2>
    exit /b
)

set DNS1=%1
set DNS2=%2

:: Get active network interface name
for /f "tokens=1,* delims=:" %%i in ('netsh interface show interface ^| find "Connected"') do (
    set iface=%%j
)
set iface=%iface:~1%

echo Setting DNS for %iface% to %DNS1% and %DNS2%...
netsh interface ip set dns name="%iface%" static %DNS1% primary
netsh interface ip add dns name="%iface%" %DNS2% index=2
echo Done!
pause
