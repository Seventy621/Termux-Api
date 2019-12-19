#!/usr/bin/sh
o='\033[0;33m'
l='\033[0;37m'
d='\033[1;30m'
g='\033[1;34m'
t='\033[1;32m'
b='\033[0;34m'
h='\033[0;32m'
c='\033[0;36m'
m='\033[0;31m'
x='\033[0;35m'
k='\033[1;33m'
p='\033[1;37m'
n='\033[0m'
clear

echo ${b}"Selamat Datang, Masukkan Nick Anda"${n}
read -p "══> " bgsd
clear
echo $h"╔═———————————————————————————————————————"
echo $h"|${k}•"$n
echo $h"| $c WhatsApp : 6285693587969"$n
echo $h"| $c Github : https://github.com/MrBarBar05"$n
echo $h"|${k}•"$n
echo $h"╚═———————————————————————————————————————"
sleep 2
echo $p"╔════════════════════════════════════════"
echo $p"║${h}[✓] Nama${n} : ${k}$bgsd "$n
echo $p"╚════════════════════════════════════════"$n
echo "[!] Note : Ini Cuma Command Termux-Api"
echo "$m[Tekan [X] Untuk Menginstall Bahan]"
echo "$c[ Hidupkan Atau Nyalakan Senter ]"
echo "╔════════════════════════════"
echo "║${k}·(${h}●${n}${k})· 01. On  "${n}
echo "║${k}·(${m}●${n}${k})· 02. Off "${n}
echo "╚════════════════════════════"
echo "$c[Menampilkan Daftar Kontak]"
echo "${p}[Z] Tekan Z untuk Menampilkan"
echo "$c[Melihat Info Termux] "
echo "${p}[B] Tekan B Untuk Melihat"
echo "$c[Melihat Info Wifi] "
echo "${p}[S] Tekan S Untuk Melihat"
echo "$c[Menampilkan Toast]"
echo "${p}[D] Tekan D Untuk Melihat"
echo "$c[Merekam Suara]"
echo "${h} Tekan [K] Untuk Merekam Suara"
echo "${m} Tekan [M] Untuk Berhenti Merekam"
read -p "Pilih : " roy
if [ $roy = 1 ] || [ $roy = 01 ]
then
termux-torch on
sleep 1 
echo "Torch On"

elif [ $roy = 2 ] || [ $roy = 02 ]; then
termux-torch off
sleep 1 
echo "Torch Off"

elif [ $roy = X ] || [ $roy = x ]; then
pkg install termux-api

elif [ $roy = Z ] || [ $roy = z ]; then
termux-contact-list

elif [ $roy = B ] || [ $roy = b ]; then
termux-info
elif [ $roy = S ] || [ $roy = s ]; then
termux-wifi-connectioninfo
elif [ $roy = D ] || [ $roy = d ]; then
termux-toast Assalamualaikum Hehe
elif [ $roy = K ] || [ $roy = k ]; then
termux-microphone-record -d
elif [ $roy = M ] || [ $roy = m ]; then
termux-microphone-record -q
else
   echo $m"Kontol Salah Pilih Lu Bgsd!!"
sleep 2
sh sh.sh
fi
