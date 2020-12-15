REM ディレクトリが変わった時はlib以下のexeを再ビルドする必要がある
REM exeを使わずにpython -mで実行する場合は不要

python -m pip -U --force-reinstall pip
python -m pip -U --force-reinstall jupyterlab

