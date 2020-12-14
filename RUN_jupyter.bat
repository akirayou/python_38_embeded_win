@echo off
cd /d %~dp0
call env.bat

mkdir jupyter
cd jupyter
jupyter lab 
