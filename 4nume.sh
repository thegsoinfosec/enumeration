#!/bin/bash

#Elif ladder statements for scanning and enumeration.
#Choose nmap, nikto, dirb or enum4linux. 
#Or, open four terminals and run them simultaniously.
echo -e "Select scanning tool: \n1 = nmap\n2 = nikto\n3 = dirb \n4 = enum4linux" 
read sel

if [[ $sel -eq 1 ]];
then

#Nmap scan.	
echo "Enter the target IP :  "
read IP

nmap -p1-65535 -sV -sS -T4 -A -O $IP

elif [[ $sel -eq 2 ]];
then

#Nikto scan.
echo "Enter the target IP :  "
read IP

nikto -h $IP

elif [[ $sel -eq 3 ]];
then

#Dirb scan.
echo "Enter the target IP:  "
read  IP

dirb http://$IP

elif [[ $sel -eq 4 ]];
then

#Enum4linux
echo "Enter target IP: "
read IP

enum4linux $IP


exit 0
fi





