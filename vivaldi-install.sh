#!/bin/bash

app="Vivali"

echo "Obteniendo version ${app}"
vivaldi_version=$(curl -s https://vivaldi.com/download/ | grep -o 'vivaldi-stable_[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*-[0-9]*' | head -n 1)
echo "${app} version: ${vivaldi_version}"

echo "Descargando ${app}"
wget https://downloads.vivaldi.com/stable/${vivaldi_version}_amd64.deb

echo "Instalando ${app}"
sudo dpkg -i ${vivaldi_version}_amd64.deb

echo "Eliminando instalador ${app}"
rm ${vivaldi_version}_amd64.deb
