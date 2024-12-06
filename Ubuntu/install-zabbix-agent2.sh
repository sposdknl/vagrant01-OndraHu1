#!/usr/bin/env bash

sudo -s
# Instalace balicku net-tools
apt install -y net-tools

# Stažení balíčku pro instalaci zabbix repo
wget https://repo.zabbix.com/zabbix/6.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_6.0+ubuntu24.04_all.deb
dpkg -i zabbix-release_latest_6.0+ubuntu24.04_all.deb
apt update

# Instalace meta balíčku
apt install zabbix-agent2 zabbix-agent2-plugin-*

systemctl enable zabbix-agent2
systemctl restart zabbix-agent2

# EOF