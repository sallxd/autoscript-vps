#!/bin/bash
clear
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
# COLOR VALIDATION
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipv4.icanhazip.com )
clear
	echo""
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
serverV=$( curl -sS https://raw.githubusercontent.com/ryz-code/autoscript-vps/master/versi )
Exf=$( curl -sS https://raw.githubusercontent.com/ryz-code/autoscript-vps/master/exfired )
Name=$( curl -sS https://raw.githubusercontent.com/ryz-code/autoscript-vps/master/name )
# =========================================
echo -e ""
echo -e "\e[36m╒━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╕\033[0m"
echo -e " \E[44;1;39m        ⇱ AutoScript By Ryz Project ⇲        \E[0m"
echo -e " \E[44;1;39m            ⇱ Informasi VPS SERVER ⇲            \E[0m"
echo -e "\e[36m╘━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╛\033[0m"
echo -e " ⚙️ Cpu Model       : $cname"          
echo -e " ⚙️ Number Of Cores : $cores"
echo -e " ⚙️ Cpu Freq        : $freq MHz"
echo -e " ⚙️ Total Ram       : $team MB"
echo -e " ⚙️ Total Swap      : $swap MB"
echo -e " ⚙️ System Uptime   : $up"
echo -e " ⚙️ Isp Name        : Asia"
echo -e " ⚙️ Kota            : Bogor"
echo -e " ⚙️ Time            : WIB"
echo -e " ⚙️ IPVPS           : $IPVPS"
echo -e "\e[36m╒━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╕\033[0m"
echo -e " \E[44;1;39m             ⇱ Status Layanan Service ⇲         \E[0m"
echo -e "\e[36m╘━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╛\033[0m"
echo -e " [ SSH WebSocket : ON ]       [ XRAY-CDN : ON ]"
echo -e "\e[36m╒━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╕\033[0m"
echo -e " \E[44;1;39m               ⇱ Status Layanan VPS ⇲           \E[0m"
echo -e "\e[36m╘━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╛\033[0m"
echo -e "[\033[1;36m01\033[0m] • SSH-WS Manager    [\033[1;36m08\033[0m] • Info Pembuat
echo -e "[\033[1;36m02\033[0m] • Vmess Manager     [\033[1;36m09\033[0m] • Speedtest
echo -e "[\033[1;36m03\033[0m] • Trojan Manager    [\033[1;36m10\033[0m] • Add SSWS
echo -e "[\033[1;36m04\033[0m] • SS Manager        [\033[1;36m11\033[0m] • ganti Banner
echo -e "[\033[1;36m05\033[0m] • Add Host          [\033[1;36m12\033[0m] • Cek Bandwith
echo -e "[\033[1;36m06\033[0m] • Running All       [\033[1;36m13\033[0m] • BACKUP
echo -e "[\033[1;36m07\033[0m] • Renew Cert        [\033[1;36m14\033[0m] • RESTORE DATA"
echo -e "\e[36m╒━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╕\033[0m"
echo -e "Version       :\033[1;36m $serverV Latest Version\e[0m"
echo -e "Client Name   : $Name"
echo -e "Expiry script : $Exf"
echo -e "\e[36m╘━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╛\033[0m"
read -p "Select From Options [ 1 - 13 ] : " menu
case $menu in
1)
clear
ssh-menu
;;
2)
clear
v2ray-menu
;;
3)
clear
trojan-menu
;;
4)
clear
ssgrpc-menu
;;
5)
clear
add-host
;;
6)
clear
running
;;
7)
clear
crtv2ray
;;
8)
clear
about
;;
9)
clear
speedtest
;;
10)
clear
add-ssws
;;
11)
clear
banner
;;
12)
clear
running
;;
13)
clear
setmenu
;;
14)
clear
exit
;;
*)
clear
menu
;;
esac
