#!/bin/bash

./motd_creator.sh

cp ./motd_creator.sh /usr/local/bin/motd

location=/etc/systemd/system/motd.service
touch $location

echo "[Unit]" > $location
echo "Description=Generate system info for motd " >> $location
echo "After=network-online.target" >> $location
echo "Wants=network-online-target" >> $location
echo " " >> $location
echo "[Service]" >> $location
echo "Type=oneshot" >> $location
echo "ExecStart=/usr/local/bin/motd" >> $location
echo " " >> $location
echo "[Install]" >> $location
echo "WantedBy=default.target" >> $location

sudo systemctl daemon-reload
