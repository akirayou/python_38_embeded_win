@ECHO OFF
cd /d %~dp0
CALL env.bat

python -m pip install -U  --upgrade-strategy only-if-needed  pip

REM pip freeze > requirements.txt�ō�����\�t�g�ꗗ���g���ɂ͂���
REM �o�[�W�������Œ肳���̂ň��肵���Č����������߂�
REM pip install -r requirements.txt

REM �ǂ��g���c�[��
pip install jupyterlab matplotlib pandas scipy numpy

REM jupyterlab�ŃC���^���N�e�B�u��matplotlib���g����
REM pip install ipywidgets ipympl nodejs
REM python -m jupyter labextension install @jupyter-widgets/jupyterlab-manager
REM python -m jupyter labextension install jupyter-matplotlib


REM "����"�悭�g���c�[��
REM pip install pycrypto compoundfiles

REM cmdstanpy�������Ƃ�
REM pip install mako cmdstanpy arviz 


REM pystan���g����
REM pip install mako pystan arviz  


REM windows�ł�numpy���_�E���O���[�g����K�v������i�b��[�u)
pip install numpy==1.19.3


REM ���̐l��pip�œ��ꂽ�\�t�g�ꗗ�������鎞�p�̃��X�g���쐬
pip freeze >requirements.txt

