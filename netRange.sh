#!/bin/bash

#Network range scan using nmap and make the output disappear.
nmap 192.168.1.1-254 -sn -f -vv -n >/dev/null -oG ScanResults

#Clean the results. We only want to see IP addresses that are up.
cat ScanResults | grep Up | cut -d ' ' -f2 | sort -n > ScanResults2

#And cat the results to a text file
cat ScanResults2

# Scan switches explained
# The goal is to stay quiet on the network.
# -f Fragments IP packets
# -n Never does DNS resolution 
# -sn Disable port scanning
# -vv Double verbose to view the output on the terminal
