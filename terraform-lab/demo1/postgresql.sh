#!/bin/bash

sudo apt update -y
sudo amazon-linux-extras enable postgresql14
sudo apt install postgresql-server -y
sudo postgresql-setup initdb
sudo systemctl start postgresql
sudo systemctl enable postgresql    
sudo useradd Judy
sudo groupadd manager
sudo apt install docker -y
sudo systemctl start docker
sudo docker run -d -p 8000:80 httpd                         
                              