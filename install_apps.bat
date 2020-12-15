@ECHO OFF
cd /d %~dp0
CALL env.bat

python -m pip install -U  --upgrade-strategy only-if-needed  pip

REM pip freeze > requirements.txtで作ったソフト一覧を使うにはこれ
REM バージョンが固定されるので安定した再現環境が見込める
REM pip install -r requirements.txt

REM 良く使うツール
pip install jupyterlab matplotlib pandas scipy numpy

REM jupyterlabでインタラクティブなmatplotlibを使う時
REM pip install ipywidgets ipympl nodejs
REM python -m jupyter labextension install @jupyter-widgets/jupyterlab-manager
REM python -m jupyter labextension install jupyter-matplotlib


REM "私が"よく使うツール
REM pip install pycrypto compoundfiles

REM cmdstanpyをつかうとき
REM pip install mako cmdstanpy arviz 


REM pystanを使う時
REM pip install mako pystan arviz  


REM windowsではnumpyをダウングレートする必要がある（暫定措置)
pip install numpy==1.19.3


REM 他の人にpipで入れたソフト一覧を教える時用のリストを作成
pip freeze >requirements.txt

