#!/bin/bash

echo "Actualizar repositorios"
sudo apt update

echo "Instalando complemento de red"
sudo apt install net-tools -y

echo "Scanner"
sudo apt install skanlite -y

echo "Calculadora"
sudo apt install kcalc -y

echo "Calculadora"
sudo apt install mypaint -y