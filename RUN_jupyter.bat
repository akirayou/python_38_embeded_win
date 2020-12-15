@echo off
cd /d %~dp0
call env.bat

mkdir home\jupyter
cd home\jupyter
python -m jupyter lab 
