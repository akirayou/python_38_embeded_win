@ECHO OFF
cd /d %~dp0
CALL env.bat
REM NODEJsをインストール
SET NAME=node-v14.15.2-win-x64
SET FILE=%NAME%.zip
SET INSTALL_DIR=%BASE_PATH%nodejs
SET URL=https://nodejs.org/dist/v14.15.2//%FILE%
echo Install to %INSTALL_DIR%

IF not EXIST "%FILE%" (
	echo %URL% to %FILE%
	bitsadmin /TRANSFER rtools %URL% "%BASE_PATH%%FILE%"
)
IF not EXIST "%INSTALL_DIR%" (
	echo powershell Expand-Archive -Path %FILE% -DestinationPath "%INSTALL_DIR%"
	powershell Expand-Archive -Path %FILE% -DestinationPath "%INSTALL_DIR%"
	
)

