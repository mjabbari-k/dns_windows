@echo off
title DNS Resolver Setup - Windows
:menu
cls
echo.
echo ===================== DNS Resolver Setup =====================
echo 1) Google          2) Cloudflare       3) Shecan       4) Electro
echo 5) Spotify_1      6) Spotify_2        7) Spotify_3    8) 403
echo 9) Alternate      10) Comodo          11) DNS.Watch   12) Level3
echo 13) OpenDNS       14) OpenNIC         15) Quad9       16) Verisign
echo 17) Yandex
echo.
echo E) Revert to Automatic DNS
echo ==============================================================
set /p option=Choose option:

if "%option%"=="1"  call :setdns 8.8.8.8 8.8.4.4
if "%option%"=="2"  call :setdns 1.1.1.1 1.0.0.1
if "%option%"=="3"  call :setdns 178.22.122.100 185.51.200.2
if "%option%"=="4"  call :setdns 78.157.42.100 78.157.42.101
if "%option%"=="5"  call :setdns 78.157.42.100 1.1.1.1
if "%option%"=="6"  call :setdns 10.202.10.202 1.1.1.1
if "%option%"=="7"  call :setdns 10.202.10.202 185.51.200.2
if "%option%"=="8"  call :setdns 10.202.10.202 10.202.10.102
if "%option%"=="9"  call :setdns 198.101.242.72 23.253.163.53
if "%option%"=="10" call :setdns 8.26.56.26 8.20.247.20
if "%option%"=="11" call :setdns 84.200.69.80 84.200.70.40
if "%option%"=="12" call :setdns 209.244.0.3 209.244.0.4
if "%option%"=="13" call :setdns 208.67.222.222 208.67.220.220
if "%option%"=="14" call :setdns 185.121.177.177 169.239.202.202
if "%option%"=="15" call :setdns 9.9.9.9 149.112.112.112
if "%option%"=="16" call :setdns 64.6.64.6 64.6.65.6
if "%option%"=="17" call :setdns 77.88.8.8 77.88.8.1
if /I "%option%"=="E" call :resetdns

pause
goto menu

:: Function to set DNS
:setdns
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
goto :eof

:: Function to reset DNS to automatic
:resetdns
for /f "tokens=1,* delims=:" %%i in ('netsh interface show interface ^| find "Connected"') do (
    set iface=%%j
)
set iface=%iface:~1%

echo Resetting DNS for %iface% to automatic...
netsh interface ip set dns name="%iface%" dhcp
echo Done!
goto :eof
