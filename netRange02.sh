#!/bin/bash

#Network range scan with port and service discovery otput to a grepable file
nmap 192.168.1.1-254 -p1-65535 -sS -sV -T4 -A  -vv  >/dev/null -oG results

#Clean the results and cat to a file
cat results | grep Up | cut -d ' ' -f2 | sort -n > results2

cat results2
