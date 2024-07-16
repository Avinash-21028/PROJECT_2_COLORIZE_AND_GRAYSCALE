@echo off
echo Running extract.py
python extract.py

echo Installing requirements
pip install -r requirements.txt

echo Running main.py
python scripts\main.py

pause
