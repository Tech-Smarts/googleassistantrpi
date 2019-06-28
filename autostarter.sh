#!/bin/bash

cd /etc/systemd/system
sudo nano garp.service
echo "[Unit]
Description=Google Assistant
Wants=network-online.target
After=network-online.target
Wants=systemd-timesyncd.service
After=systemd-timesyncd.service

[Service]
Environment=DISPLAY=:0
Type=simple
Restart=always
User=pi
ExecStart=/home/pi/googleassistantpackages/garp.sh

[Install]
WantedBy=multi-user.target"
exit
