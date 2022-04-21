#!/bin/bash
# one liner
nmap -F -T4 --min-rate 10 192.168.0.142 -oX - | xq -r '.nmaprun.runstats.hosts."@up"' | sed "s/^/,/g" | ts "%Y-%m-%d %H:%M:%S" | tee >(mosquitto_pub -h 192.168.0.210 -u lamjys -P $(base64 -d ~/.config/mqtt-base) -t nmap -l) >(tee -a ~/Documents/nmap.log > /dev/null)
# nmap -F -T4 --min-rate 10 192.168.0.142 -oX - | xq -r '.nmaprun.runstats.hosts."@up"' | sed "s/^/,/g" | ts "%Y-%m-%d %H:%M:%S" >> ~/Documents/nmap.log
# nmap -F -T4 --min-rate 10 192.168.0.142 -oX /home/nana/Documents/nmap.xml 
# /home/nana/.local/bin/xq '.nmaprun.runstats.hosts."@up"' /home/nana/Documents/nmap.xml | ts >> /home/nana/Documents/nmap.log
