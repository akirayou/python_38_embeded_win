cd /d %~dp0
SET BASE_PATH=%~dp0
SET PYTHON_VER=3.8.6
SET DL_PYTHON=python-%PYTHON_VER%-embed-amd64
SET PYTHONPATH=%BASE_PATH%%DL_PYTHON%

SET PATH=%PYTHONPATH%;%PYTHONPATH%\Scripts;%PATH%

REM for cmdstan (install_rtools.bat)
SET RTOOLS_PATH=%BASE_PATH%rtools
SET PATH=%RTOOLS_PATH%\usr\bin;%RTOOLS_PATH%\mingw64\bin;%RTOOLS_PATH%;%BASE_PATH%home\.cmdstan\cmdstan-2.25.0\bin;%PATH%

REM for jupyterlab widget extension (install_nodejs.bat)
SET NODEJS_PATH=%BASE_PATH%nodejs\node-v14.15.2-win-x64
SET PATH=%NODEJS_PATH%;%PATH%
SET NODE_PATH=%NODEJS_PATH%\node_modules\npm\node_modules;%NODEJS_PATH%\node_modules\npm



REM ホームディレクトリを上書きする。 
REM ホームディレクトリに設定ファイルを書くパケージが以下のフォルダをhomeと見なす
REM jupyter起動時にfirefoxが自動起動しなくなる副作用があるので、必要ならばコメントアウト
SET USERPROFILE=%BASE_PATH%home
SET HOME=%BASE_PATH%home
SET PYTHONUSERBASE=%BASE_PATH%home\.local
SET MAKEFLAGS=-j

