#!/bin/bash

echo "Verificando Python 3..."
if ! python3 --version &>/dev/null; then
    echo "Python no está instalado. Instalando con Homebrew..."
    if ! command -v brew &>/dev/null; then
        echo "Homebrew no está instalado. Instalando Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    brew install python
    echo "¡Python 3 instalado! Reinicia la consola y ejecuta este script nuevamente."
    exit 1
fi

echo "Creando entorno virtual..."
python3 -m venv venv
source venv/bin/activate

echo "Instalando dependencias..."
pip install -r requirements.txt

echo "Ejecutando proyecto..."
python proyectoCripto.py --run

read -p "Presiona Enter para salir..."

deactivate