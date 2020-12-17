@ECHO OFF
cd /d %~dp0
CALL env.bat

REM python -m pip install -U  pip

REM pip freeze > requirements.txt�ō�����\�t�g�ꗗ���g���ɂ͂���
REM �o�[�W�������Œ肳���̂ň��肵���Č����������߂�
REM pip install -r requirements.txt

REM windows�ł�numpy���_�E���O���[�g����K�v������i�b��[�u)
pip install numpy==1.19.3
REM �ǂ��g���c�[��
pip install jupyterlab matplotlib pandas scipy 

REM jupyterlab�ŃC���^���N�e�B�u��matplotlib���g����
call install_nodejs.bat
pip install ipywidgets ipympl nodejs
python -m jupyter labextension install @jupyter-widgets/jupyterlab-manager
python -m jupyter labextension install jupyter-matplotlib


REM "����"�悭�g���c�[��
REM pip install pycrypto
pip install compoundfiles

REM cmdstanpy�������Ƃ�
call install_rtools.bat
pip install mako cmdstanpy arviz tqdm ujson
python -m cmdstanpy.install_cmdstan



REM pystan���g����
REM pip install mako pystan arviz  




REM ���̐l��pip�œ��ꂽ�\�t�g�ꗗ�������鎞�p�̃��X�g���쐬
pip freeze >requirements.txt

