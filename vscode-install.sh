#!/bin/bash

app="VS Code"

echo "Obteniendo version ${app}"
vscode_version=$(curl -s https://code.visualstudio.com/Download | grep -o -m 1 "code-[0-9]\+\.[0-9]\+\.[0-9]\+-x86_64.deb" | cut -d '-' -f 2)
echo "${app} version: ${vscode_version}"

echo "Descargando ${app}"
curl -LOJ https://code.visualstudio.com/sha/download?build=$vscode_version\&os=linux-deb-x64

echo "Instalando ${app}"
sudo dpkg -i code*.deb

echo "Eliminando instalador ${app}"
rm code*.deb
