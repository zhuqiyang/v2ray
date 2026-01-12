#!/bin/bash


mkdir -p /usr/local/etc/v2ray
mkdir -p /usr/local/share/v2ray
mkdir -p /usr/local/bin

mkdir v2ray
cd v2ray

wget https://github.com/zhuqiyang/v2ray/raw/refs/heads/main/geoip.dat
wget https://raw.githubusercontent.com/zhuqiyang/v2ray/refs/heads/main/v2ray
wget https://github.com/zhuqiyang/v2ray/raw/refs/heads/main/config.json
wget https://github.com/zhuqiyang/v2ray/raw/refs/heads/main/v2ray.service


cp config.json /usr/local/etc/v2ray/config.json
cp geoip.dat /usr/local/share/v2ray/geoip.dat
cp v2ray /usr/local/bin/v2ray
cp v2ray.service /usr/lib/systemd/system/v2ray.service
chmod +x /usr/local/bin/v2ray

systemctl enable --now v2ray
systemctl status v2ray
