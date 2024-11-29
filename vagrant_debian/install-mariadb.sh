apt install -y mariadb-server


sudo systemctl enable mariadb

# Spuštění a restart služby mariadb
sudo systemctl restart mariadb

# Kontrola stavu služby mariadb
sudo systemctl status mariadb --no-pager

# EOF