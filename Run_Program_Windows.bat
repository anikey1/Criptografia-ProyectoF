@echo off
echo Verificando Python 3...
python --version >nul 2>&1 || (
    echo Python no está instalado. Instalando con winget...
    winget install --id Python.Python.3.12 --silent --override "--install-options=InstallAllUsers=1 PrependPath=1"
    echo ¡Python 3 instalado! Reinicia la consola y corre el script nuevamente.
    pause
)


echo Creando entorno virtual...
python -m venv venv

echo Activando entorno virtual...
call venv\Scripts\activate.bat

echo Instalando dependencias...
pip install -r requirements.txt

echo Ejecutando el proyecto...
python proyectoCripto.py --run

echo Continue para cerrar el entorno virtual
pause

echo Cerrando entorno virtual...
deactivate