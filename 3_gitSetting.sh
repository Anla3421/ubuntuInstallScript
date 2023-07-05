#!/bin/bash
# 使用前請先登vpn

# docker login
echo "將執行 docker login"
read -p "請輸入你的 harbor 帳號: " username
read -p "請輸入你的 harbor 密碼: " password
docker login docker.grandsys.com -u $username -p $password

# git config name & email
echo "將執行 git config"
read -p "請輸入你的 config user.name: " name
read -p "請輸入你的 config user.email: " email
git config --global user.name $name
git config --global user.email $email

# ssh-keygen 
ssh-keygen -f ~/.ssh/id_rsa -q -N ""
cat ~/.ssh/id_rsa.pub
echo "請手動複製上述的 ssh-key 至 gitlab 等有需要的地方登記"