@ECHO OFF
cd /d %~dp0
CALL env.bat

pip install -U pip

REM pip freeze > requirements.txt�ō�����\�t�g�ꗗ���g���ɂ͂���
REM �o�[�W�������Œ肳���̂ň��肵���Č����������߂�
REM pip install -r requirements.txt

REM �ǂ��g���c�[��
pip install jupyterlab matplotlib  pandas scikit-learn scipy numpy

REM advanced�ȉ����c�[��
REM pip install ipywidgets widgetsnbextensio
REM pip install holoviews bokeh plotly pyviz_comms

REM cmdstanpy�������Ƃ�
REM pip install mako cmdstanpy arviz 
REM mkdir tools


REM pystan���g����
REM pip install mako pystan arviz pycrypto 


REM windows�ł�numpy���_�E���O���[�g����K�v������i�b��[�u)
pip install numpy==1.19.3


REM ���̐l��pip�œ��ꂽ�\�t�g�ꗗ�������鎞�p�̃��X�g���쐬
pip freeze >requirements.txt

