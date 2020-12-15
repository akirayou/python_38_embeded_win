基本的にはinstall.batを実行するだけですべてが入るはずです。


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

