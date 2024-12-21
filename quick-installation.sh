#!/bin/bash

clear
echo -e "\033[1;32m
██████╗ ██╗   ██╗██████╗ ██████╗ ██████╗ ██████╗  █████╗ 
██╔══██╗╚██╗ ██╔╝██╔══██╗██╔══██╗██╔══██╗╚════██╗██╔══██╗
██████╔╝ ╚████╔╝ ██║  ██║██║  ██║██║  ██║ █████╔╝╚██████║
██╔══██╗  ╚██╔╝  ██║  ██║██║  ██║██║  ██║██╔═══╝  ╚═══██║
██║  ██║   ██║   ██████╔╝██████╔╝██████╔╝███████╗ █████╔╝
╚═╝  ╚═╝   ╚═╝   ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝ ╚════╝ 
\033[0m"
echo -e "\033[1;34m====================================================\033[1;34m"
echo -e "\033[1;34m@Ryddd29 | Testnet, Node Runer, Developer, Retrodrop\033[1;34m"

sleep 4

# Update package
echo -e "\033[1;32m\033[1mUpdate & Upgrade package...\033[0m"
sudo apt update && sudo apt upgrade -y
sudo apt install git -y
clear

# Script start here
git clone https://github.com/cortensor/installer
cd installer
./install-docker-ubuntu.sh
./install-ipfs-linux.sh
./install-linux.sh
ls --all /usr/local/bin/cortensord
ls --all /etc/systemd/system/cortensor.service
docker version
ipfs version
sudo su deploy
cd ~/
/usr/local/bin/cortensord ~/.cortensor/.env tool gen_key
/usr/local/bin/cortensord ~/.cortensor/.env tool register
/usr/local/bin/cortensord ~/.cortensor/.env tool verify
sudo systemctl start cortensor

echo -e "\033[1;34mSilakan hubungi Cortensor support untuk whitelist address Anda.\033[1;34m"
