@ECHO OFF
cd /d %~dp0
CALL env.bat

pip install -U pip

REM pip freeze > requirements.txtで作ったソフト一覧を使うにはこれ
REM バージョンが固定されるので安定した再現環境が見込める
REM pip install -r requirements.txt

REM 良く使うツール
pip install jupyterlab matplotlib  pandas scikit-learn scipy numpy

REM advancedな可視化ツール
REM pip install ipywidgets widgetsnbextensio
REM pip install holoviews bokeh plotly pyviz_comms

REM cmdstanpyをつかうとき
REM pip install mako cmdstanpy arviz 
REM mkdir tools


REM pystanを使う時
REM pip install mako pystan arviz pycrypto 


REM windowsではnumpyをダウングレートする必要がある（暫定措置)
pip install numpy==1.19.3


REM 他の人にpipで入れたソフト一覧を教える時用のリストを作成
pip freeze >requirements.txt

