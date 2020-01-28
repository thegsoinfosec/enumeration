#!/bin/bash

#nmap diffing cron job
mkdir /opt/nmap_diff
d=$(date +%Y-%m-%d)
y=$(date -d yesterday + %Y-%m-%d)
/usr/bin/nmap -T4 -oX /opt/nmap_diff/scan_$d.xml 192.168.1.1-254 >
/dev/null 2>&1

if [[ -e /opt/nmap_diff/scan_$y.xml ]]; 
then
	/usr/bin/ndiff/opt/nmap_diff/scan_$y.xml
	/opt/nmap_diff/scan_$d.xml > /opt/nmap_diff.txt

fi

#Disclaimer, I haven't tested this one yet.
#But constructive input is allways welcome.
