sudo yum install mariadb-server
sudo vi /etc/my.cnf     # configure port if needed
sudo service mariadb start
sudo systemctl enable mariadb

# Open port 3306 for database access
sudo firewall-cmd --permanent --zone=public --add-port=3306/tcp
sudo firewall-cmd --reload

# Configure database
mysql
> CREATE DATABASE ecomdb;
> CREATE USER 'ecomuser'@'localhost' IDENTIFIED BY 'ecompassword';
> GRANT ALL PRIVILEGES ON *.* TO 'ecomuser'@'localhost';
> FLUSH PRIVILEGES;

# Load sample data
mysql < db-load-script.sql
