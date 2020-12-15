cd /d %~dp0
SET BASE_PATH=%~dp0
SET PYTHON_VER=3.8.6
SET DL_PYTHON=python-%PYTHON_VER%-embed-amd64
SET PYTHONPATH=%BASE_PATH%%DL_PYTHON%

SET PATH=%PYTHONPATH%;%PYTHONPATH%\Scripts;%PATH%

REM ホームディレクトリを上書きする。 
REM ホームディレクトリに設定ファイルを書くパケージが以下のフォルダをhomeと見なす
REM jupyter起動時にfirefoxが自動起動しなくなる副作用があるので、必要ならばコメントアウト
SET USERPROFILE=%BASE_PATH%home
SET HOME=%BASE_PATH%home
SET PYTHONUSERBASE=%BASE_PATH%home\.local


