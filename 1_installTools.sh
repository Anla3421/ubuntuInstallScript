#!/bin/bash

# 更新套件
sudo apt update
sudo apt upgrade
# sudo snap refresh snap-store
sudo snap refresh

# 安裝 forticlient
wget https://filestore.fortinet.com/forticlient/forticlient_vpn_7.0.7.0246_amd64.deb
sudo dpkg -i forticlient_vpn_7.0.7.0246_amd64.deb

# 安裝 chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# 安裝 mongo compass
wget https://downloads.mongodb.com/compass/mongodb-compass_1.38.2_amd64.deb
sudo dpkg -i mongodb-compass_1.38.2_amd64.deb

# 安裝 openlens
wget https://github.com/MuhammedKalkan/OpenLens/releases/download/v6.2.0/OpenLens-6.2.0.deb
sudo dpkg -i OpenLens-6.2.0.deb

# 安裝 golang 1.20.5
wget https://dl.google.com/go/go1.20.5.linux-amd64.tar.gz
sudo mv ~/go1.20.5.linux-amd64.tar.gz /usr/local
cd /usr/local
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.20.5.linux-amd64.tar.gz
cd ~
echo '' >> ~/.bashrc
echo 'export GOPROXY="http://ci.grandsys.com:90"' >> ~/.bashrc
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
# go version

# 安裝 docker
sudo snap install docker
# 讓 docker 不用每次下 sudo，重開機之後得生效
sudo groupadd docker
sudo usermod -aG docker $USER
docker login docker.grandsys.com -u $username -p $password

# 安裝 vscode
sudo snap install code

# 安裝 teams-for-linux
sudo snap install teams-for-linux

# 安裝 postman
sudo snap install postman

# 安裝 node, npm 及版本管理器 n
sudo apt install -y nodejs npm
sudo npm install -y -g n
# 版本切換：
sudo n 18.15
# sudo npm install -g npm@8.11

# 安裝 dbeaver
sudo snap install dbeaver-ce

# 安裝 filezilla
sudo apt install -y filezilla

# 安裝 telegram
sudo snap install telegram-desktop

# 安裝 htop
sudo snap install htop

# 安裝 spotify
sudo snap install spotify

# 安裝 zsh
sudo apt install -y zsh
chsh -s $(which zsh)
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh