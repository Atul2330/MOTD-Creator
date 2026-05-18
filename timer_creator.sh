#!/bin/bash

location=/etc/systemd/system/motd.timer
touch $location

echo "[Unit]" > $location
echo "Description=Generate system info for motd" >> $location
echo "" >> $location
echo "[Timer]" >> $location
echo "Persistent=true" >> $location
echo "OnBootSec=2m" >> $location
echo "OnUnitActiveSec=1h" >> $location
echo "" >> $location
echo "[Install]" >> $location
echo "WantedBy=timers.target" >> $location

sudo systemctl daemon-reload
