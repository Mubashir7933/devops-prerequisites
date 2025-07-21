sudo yum install -y httpd php php-mysql

# Open port 80 for web access
sudo firewall-cmd --permanent --zone=public --add-port=80/tcp
sudo firewall-cmd --reload

# Configure Apache
sudo vi /etc/httpd/conf/httpd.conf   # Set DirectoryIndex to index.php
sudo service httpd start
sudo systemctl enable httpd
