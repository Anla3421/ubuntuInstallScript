#!/bin/bash
# 更新套件，執行完成後會重開機，請記得連結到網路再執行否則會直接重開機。

sudo snap refresh -y
sudo apt update -y
sudo apt upgrade -y

sudo reboot now