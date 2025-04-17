@echo off
:start
echo.
echo 						DNS Resolver Setup
echo _-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
echo 1)Google 	2)1.1.1.1 	3)Shecan 	4)elctro 
echo. 	
echo 5)Spotify_1 	6)Spotify_2 	7)Spotify_3
echo. 
echo 8)403	9)Alternate 	10)Comodo 	11)DNS.Watch 	12)Level3 	13)OpenDNS
echo.
echo 14)OpenNIC 	15)Quad9 	16)Verisign 	17)Yandex
echo.
echo e) Obtain DNS server automatically
echo.
set /p option=Please enter the number: 
echo.
echo You entered: 	%option%



if %option%==1 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=8.8.8.8 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=8.8.4.4 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=8.8.8.8 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=8.8.4.4 index=2

) else if %option%==2 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=1.1.1.1 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=1.0.0.1 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=1.1.1.1 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=1.0.0.1 index=2

)else if %option%==3 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=178.22.122.100 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=185.51.200.2 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=178.22.122.100 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=185.51.200.2 index=2

)else if %option%==4 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=78.157.42.100 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=78.157.42.101 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=78.157.42.100 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=78.157.42.101 index=2

)else if %option%==5 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=78.157.42.100 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=1.1.1.1 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=78.157.42.100 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=1.1.1.1 index=2

)else if %option%==6 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=10.202.10.202 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=1.1.1.1 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=10.202.10.202 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=1.1.1.1 index=2
)else if %option%==7 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=10.202.10.202 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=185.51.200.2 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=10.202.10.202 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=185.51.200.2 index=2

)else if %option%==8 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=10.202.10.202 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=10.202.10.102 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=10.202.10.202 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=10.202.10.102 index=2

)else if %option%==9 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=198.101.242.72 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=23.253.163.53 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=198.101.242.72 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=23.253.163.53 index=2

)else if %option%==10 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=8.26.56.26 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=8.20.247.20 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=8.26.56.26 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=8.20.247.20 index=2

)else if %option%==11 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=84.200.69.80 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=84.200.70.40 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=84.200.69.80 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=84.200.70.40 index=2

)else if %option%==12 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=209.244.0.3 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=209.244.0.4 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=209.244.0.3 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=209.244.0.4 index=2

)else if %option%==13 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=208.67.222.222 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=208.67.220.220 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=209.244.0.3 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=209.244.0.4 index=2

)else if %option%==14 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=185.121.177.177 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=169.239.202.202 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=185.121.177.177 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=169.239.202.202 index=2

)else if %option%==15 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=9.9.9.9 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=149.112.112.112 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=9.9.9.9 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=149.112.112.112 index=2

)else if %option%==16 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=64.6.64.6 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=64.6.65.6 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=64.6.64.6 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=64.6.65.6 index=2

)else if %option%==17 (

	netsh interface ipv4 add dnsserver "Wi-Fi" address=77.88.8.8 index=1
	netsh interface ipv4 add dnsserver "Wi-Fi" address=77.88.8.1 index=2
	netsh interface ipv4 add dnsserver "Ethernet" address=77.88.8.8 index=1
	netsh interface ipv4 add dnsserver "Ethernet" address=77.88.8.1 index=2

)else if %option%==e (

	netsh interface ip set dns name="Wi-Fi" source=dhcp
	netsh interface ip set dns name="Ethernet" source=dhcp

) else (
	echo Invalid option.
	set /p any=Press any key to restart
	cls
	goto start
)



