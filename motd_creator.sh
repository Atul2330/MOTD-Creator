#!/bin/bash
location=/etc/motd
touch $location
printf "\nSystem Information: \n" > $location
printf '%s\n' '---' >>$location
hostnamectl >> $location
