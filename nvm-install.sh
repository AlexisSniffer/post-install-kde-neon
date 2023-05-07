#!/bin/bash

app="NVM"

echo "Obteniendo version ${app}"
nvm_version=$(curl -s https://github.com/nvm-sh/nvm | grep -o 'https://raw.githubusercontent.com/nvm-sh/nvm/v[0-9]*\.[0-9]*\.[0-9]*\/install.sh' | head -n 1)
echo "${app} version: ${nvm_version}"

echo "Instalando ${app}"
wget -qO- ${nvm_version} | bash
source ~/.bashrc
