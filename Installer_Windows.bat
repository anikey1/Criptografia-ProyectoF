@echo off
echo Verificando Python 3...
python --version >nul 2>&1 || (
    echo Python no está instalado. Instalando con winget...
    winget install --id Python.Python.3.12 --silent --override "--install-options=InstallAllUsers=1 PrependPath=1"
    echo ¡Python 3 instalado! Reinicia la consola y corre el script nuevamente.
)


python -m pip install -r requirements.txt

pause