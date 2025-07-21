## 🚀 Start MariaDB Server
```bash
sudo yum install mariadb-server
sudo vi /etc/my.cnf     # Optional: Configure port
sudo service mariadb start
sudo systemctl enable mariadb
CREATE DATABASE ecomdb;
CREATE USER 'ecomuser'@'localhost' IDENTIFIED BY 'ecompassword';
GRANT ALL PRIVILEGES ON *.* TO 'ecomuser'@'localhost';
FLUSH PRIVILEGES;
