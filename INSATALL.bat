@ECHO OFF
cd /d %~dp0
mkdir home
CALL env.bat
regedit "%BASE_PATH%\longfilepath.reg"

SET DL_URL_PYTHON=https://www.python.org/ftp/python/%PYTHON_VER%/%DL_PYTHON%.zip
SET DLED_PYTHON=%PYTHONPATH%.zip

echo Install to %BASE_PATH%
IF not EXIST "%DLED_PYTHON%" (
	bitsadmin /TRANSFER python  %DL_URL_PYTHON% "%DLED_PYTHON%"
)
IF not EXIST "%DL_PYTHON%" (
	powershell Expand-Archive -Path %DL_PYTHON%.zip
)
IF not EXIST get-pip.py (
	bitsadmin /TRANSFER getpip https://bootstrap.pypa.io/get-pip.py "%BASE_PATH%\get-pip.py"
)
echo %PATH%

REM copy settings
copy /Y python38._pth "%DL_PYTHON%"\
copy /Y sitecustomize.py "%DL_PYTHON%"\
python get-pip.py

call install_apps.bat




