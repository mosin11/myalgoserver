@echo off
REM Create virtual environment
python -m venv venv

REM Activate virtual environment
call venv\Scripts\activate

REM Navigate to kotak-neo-api folder and install in editable mode
cd kotak-neo-api
pip install -e .

pip install flask-socketio

python setup.py install

cd ..

REM Install required packages
pip install flask flask-cors python-dotenv

REM Optional: install from setup.py (if your project has it)
python setup.py install

REM Start the Flask server
python server.py
deactivate

pause
