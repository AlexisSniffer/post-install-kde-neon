#!/bin/bash

echo "Instalando git"
sudo apt update
sudo apt install git -y
git --version
git config --global user.email "alexis.sniffer@gmail.com"
git config --global user.name "Alexis Sniffer"