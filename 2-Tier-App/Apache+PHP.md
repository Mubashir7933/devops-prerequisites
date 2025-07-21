# 🚀 2-Tier Application Deployment on CentOS (MariaDB + Apache/PHP)

This is a full setup guide for deploying a 2-tier application using **MariaDB** as the backend and **Apache HTTP Server with PHP** as the frontend.

---

## 🔐 Backend: MariaDB Setup

### 🧰 Install and Start MariaDB
```bash
sudo yum install mariadb-server
sudo vi /etc/my.cnf        # Configure port if needed
sudo service mariadb start
sudo systemctl enable mariadb
```
### 🔓 Open Port 3306 for Database Access
```bash
sudo firewall-cmd --permanent --zone=public --add-port=3306/tcp
sudo firewall-cmd --reload
```
###⚙️ Configure Database
```bash
CREATE DATABASE ecomdb;
CREATE USER 'ecomuser'@'localhost' IDENTIFIED BY 'ecompassword';
GRANT ALL PRIVILEGES ON *.* TO 'ecomuser'@'localhost';
FLUSH PRIVILEGES;
```
### 📦 Load Sample Data
```bash
mysql < db-load-script.sql
```

🌐 Frontend: Apache HTTP Server and PHP Setup


🧰 Install Apache and PHP with MySQL Support
```bash
sudo yum install -y httpd php php-mysql
```


🔓 Open Port 80 for Web Access
```
sudo firewall-cmd --permanent --zone=public --add-port=80/tcp
sudo firewall-cmd --reload
```
⚙️ Configure Apache to Use index.php
```bash

sudo vi /etc/httpd/conf/httpd.conf
# Change: DirectoryIndex index.html
# To:     DirectoryIndex index.php

```

🚀 Start and Enable Apache Service
```bash
sudo service httpd start
sudo systemctl enable httpd
```
⬇️ Clone Your Application Code
```bash
sudo yum install -y git
git clone https://github.com/<your-username>/<your-repo>.git /var/www/html/

```

