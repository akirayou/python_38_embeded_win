@ECHO OFF
cd /d %~dp0
CALL env.bat
REM RTOOLSをインストール

SET FILE=rtools40-x86_64.exe
SET URL=https://cran.r-project.org/bin/windows/Rtools/%FILE%
SET INSTALL_DIR=%BASE_PATH%rtools
echo Install to %INSTALL_DIR%

IF not EXIST "%FILE%" (
	echo %URL% to %FILE%
	bitsadmin /TRANSFER rtools %URL% "%BASE_PATH%%FILE%"
)

%FILE% /SP- /SILENT /SUPPRESSMSGBOXES /CURRENTUSER /LANG=English /DIR=%INSTALL_DIR%  /NOICONS /NORESTART
pacman -Syu mingw-w64-x86_64-make

