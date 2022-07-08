#!/bin/sh
# scanip.sh subnet_ip port output_file

/usr/bin/nmap -sn -n $1 | grep 'Nmap scan report for' | cut -f 5 -d ' ' | sed '/:[0-9]*$/ ! s/$/:'$2'/' > $3
