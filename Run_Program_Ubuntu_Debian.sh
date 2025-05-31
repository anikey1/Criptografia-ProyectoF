#!/bin/bash

echo "Verificando Python 3..."
if ! python3 --version &>/dev/null; then
    echo "Python no está instalado. Instalando con el gestor de paquetes..."
    sudo apt-get update && sudo apt-get install -y python3 python3-pip 
    echo "¡Python 3 instalado! Reinicia la consola y ejecuta este script nuevamente."
    exit 1 
fi

echo "Verificando pip3"
if ! command -v pip3 &>/dev/null; then
echo "Pip3 no está instalado, instalando pip3..."
sudo apt install -y python3-pip

fi

sudo apt install -y python3-venv

echo "Creando entorno virtual..."
python3 -m venv venv
source venv/bin/activate

echo "Instalando dependencias..."
pip3 install -r requirements.txt

echo "Ejecutando proyecto..."
python3 proyectoCripto.py --run

read -p "Presiona Enter para continuar..."  



