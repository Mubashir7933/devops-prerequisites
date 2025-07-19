# 🔐 Security in DevOps - SSL, TLS & SSH Basics

This folder contains my hands-on learning from the **Security** module of the KodeKloud DevOps Pre-requisites course. Topics include public/private key cryptography, SSL/TLS basics, and Certificate Signing Requests.

---

## ✅ Topics Covered

### 1. Asymmetric Encryption
- Uses two keys: **Private Key** and **Public Lock**
- Ensures secure communication in SSL/TLS and SSH
- Visual explanation attached (`asymmetric-encryption.png`)

### 2. SSH Key Generation (Linux)
- Created RSA key pair using:
  ```bash
  mkdir -p ~/.ssh
  chmod 700 ~/.ssh
  ssh-keygen -t rsa -f ~/.ssh/mykey
Key saved to:

Private key: ~/.ssh/mykey

Public key: ~/.ssh/mykey.pub

3. SSL & TLS Basics
SSL (Secure Sockets Layer) and TLS (Transport Layer Security) protocols

Enable encrypted communication between client and server

Commonly used in HTTPS and modern web application security

4. Certificate Signing Request (CSR)
Created a CSR at /etc/httpd/csr/app01.csr using openssl req

Provided the following details:

Country: SG

State: Capital Tower

Locality: CT

Organization: KodeKloud

Organizational Unit: Education

Common Name: app01.com

Email: admin@kodekloud.com



🧠 What I Learned
Secure communication is the backbone of DevOps pipelines

SSH is essential for automation, remote access, and Git authentication

SSL/TLS setup is critical for protecting data in transit

🔗 References
KodeKloud Security Course

OpenSSL Documentation

SSH Keygen Manual
