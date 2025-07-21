# 2-Tier Application Deployment on CentOS

This project demonstrates a basic 2-tier application setup using MariaDB (as the backend database) and Apache HTTPD with PHP (as the frontend), deployed on a CentOS-based system.

## 🧰 Tools & Technologies

- CentOS Linux
- MariaDB Server
- Apache HTTPD
- PHP & php-mysql
- firewalld
- Git

## ⚙️ Steps Followed

### ✅ Install and Enable Firewall
sudo yum install firewalld
sudo service firewalld start
sudo systemctl enable firewalld
✅ MariaDB Setup (Backend)
✅ Apache + PHP Setup (Frontend)



📚 What I Learned
Importance of port-based firewall configuration

Configuring and securing MariaDB users and access

Setting up a simple web server and connecting it to a database

Using curl for local testing

Managing system services with systemctl and service

🚀 Next Steps
Convert this deployment into Docker containers

Automate setup with Ansible or a Bash script

Deploy on AWS EC2 with security groups

