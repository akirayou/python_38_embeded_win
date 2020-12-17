基本的にはinstall.batを実行するだけですべてが入るはずです。(約520MB使用します。）
スペースや漢字を含まない所に展開する事をお勧めします。（jupytrlab のextension等一部のライブラリがインストールにコケる）



変更を検討すべき場所：
env.batでHOMEディレクトリを上書きしています。（windowsのuser porfileフォルダを変更しています。）
コレによってpipのキャッシュ等で環境を汚さなくなりますが、キャッシュが再利用できなかったり、
jupyterを起動する時にfirefoxが起動出来なくなったりします。

USERPROFILE/HOME/PYTHONUSERBASEの設定をコメントアウトすればHOMEディレクトリの上書きはしません。


フォルダごとコピーして再利用する場合：
pip やjupyterは"python -m "を先頭に付加する事で問題なく使えます。
python-3.8.6-embed-amd64\Scriptsにあるexeを直接実行したい場合は
当該のパッケージをpipでインストールし直して下さい。
実行例が onReplace_dir.batにあります


制限事項：
ビルドツールやらBLAS等の依存ライブラリをインストールしてないので
最新のpipをビルドしてインストールする事はできません。
適当にバイナリの存在する（少しだけ古い）バージョンのpipを入れて下さい。

参考：ビルドツールについてはここ。
ただし、さらに追加で依存ライブラリがあることがあるのでこれだけでは普通は解決しない。
https://www.python.jp/install/windows/install_vstools2017.html



cmdstan配布時のコツ：
雑多なインストーラは(node/python/rtoolsの.zip/.exe)は消して酔い(161MB)


nodejsはjupyterlabのextensionビルド時のみに必要なので要らなくなったらフォルダ毎けしてよい。
復帰させるときはinstall_nodejs.batを実行　(74MB)


rtoolsはstanのビルドに使うが、ビルドしたバイナリを実行させる場合は不要なので消して良い。
復帰はinstall_rtools.bat(1.07GB)
home/.cmdstanも消してよい(353MB)再インストールは以下のコマンド
python -m cmdstanpy.install_cmdstan

jupyterとcmdstanのバイナリを走らせるだけなら800MB弱
cmdstanのビルドを行う画場合は2.2G程度になる





