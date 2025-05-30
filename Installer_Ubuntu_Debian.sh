#!/bin/bash

echo "Verificando Python 3..."
if ! python3 --version &>/dev/null; then
    echo "Python no está instalado. Instalando con el gestor de paquetes..."
    sudo apt-get update && sudo apt-get install -y python3 python3-pip 
    echo "¡Python 3 instalado! Reinicia la consola y ejecuta este script nuevamente."
    exit 1 

else
    echo "Python ya está instalado. Instalando dependencias..."
    python3 -m pip install -r requirements.txt
fi

read -p "Presiona Enter para continuar..."  