cd /d %~dp0
SET BASE_PATH=%~dp0
SET PYTHON_VER=3.8.6
SET DL_PYTHON=python-%PYTHON_VER%-embed-amd64
SET PYTHONPATH=%BASE_PATH%%DL_PYTHON%

SET PATH=%PYTHONPATH%;%PYTHONPATH%\Scripts;%PATH%
SET PATH=%BASE_PATH%home\.cmdstan\RTools40\usr\bin;%BASE_PATH%home\.cmdstan\\RTools40\mingw64\bin;%BASE_PATH%home\.cmdstan\RTools40;%BASE_PATH%home\.cmdstan\cmdstan-2.25.0\bin;%PATH%

REM �z�[���f�B���N�g�����㏑������B 
REM �z�[���f�B���N�g���ɐݒ�t�@�C���������p�P�[�W���ȉ��̃t�H���_��home�ƌ��Ȃ�
REM jupyter�N������firefox�������N�����Ȃ��Ȃ镛��p������̂ŁA�K�v�Ȃ�΃R�����g�A�E�g
SET USERPROFILE=%BASE_PATH%home
SET HOME=%BASE_PATH%home
SET PYTHONUSERBASE=%BASE_PATH%home\.local


