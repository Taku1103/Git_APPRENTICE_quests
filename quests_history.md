Linux が何かを説明できる
1. OS とは
OS とは何かを、プログラミング初心者にわかるように説明してください。



>
オペレーティングシステム（operating system）の略。
ソフトウェア（アプリケーション）とハードウェア（データなどの記録、保管装置）の間をつなぐ役割をもつソフトウェアのこと。

メモリやCPUの違いなどはすべてOSが吸収し、通訳としてアプリケーションを動かしている。これによりアプリケーションごとにコンピュータを用意する必要が無くなった。

2. Linux とは
Linux とは何かを、プログラミング初心者にわかるように説明してください。
—-----------------------------------------------------
Linuxは、広義的なOS（Linuxディストリビューション）としての意味と、狭義的なカーネルとしての2つの意味をもつ。

広義的な意味でのLinuxはUnix系OSの一種で、無償公開されているソフトウェア（オープンソース）を指す。
多機能ではないものの動作が軽く、導入コストが掛からない、カスタマイズ性が高いのが特徴。
そのためコストを抑えて必要な分だけサーバを構築するのに適している。

ーーーーーーーーーーーーーーーーーーーーーーーーーー
3. カーネルとディストリビューションとは
Linux におけるカーネルとディストリビューションについて、それぞれプログラミング初心者にわかるように説明してください。
ーーーーーーーーーーーーーーーーー

>
・カーネル（kernel:核、中心部）はOSの中核部分を担うソフトウェアのこと。
狭義的にはLinuxという言葉はそのOSのカーネルを指す言葉である。

・ディストリビューション（distribution：流通、配布）は主にLinuxディストリビューションを指す。
Linuxディストリビューションは Linuxのカーネルに、各種のライブラリ（プログラムのまとまり）やアプリケーションソフトウェアなどの周辺的機能を組み合わせて、一つのパッケージとして配布されているOSの総称。

カーネルとしてのLinuxは一般ユーザーが各種作業を行うためのOSとして導入するのが難しいが、オープンソースとして自由に拡張、再配布ができるという点を利用し、カーネルにライブラリ、アプリケーションソフトウェアなどを追加する。
そうすることで一般ユーザーにとって利用しやすいLinuxディストリビューションの形で配布することが出来る。


再度まとめると、Linuxは
狭義的にはカーネルとしてのLinux：Linuxカーネル
広義的にはOSとしてのLinux：Linuxディストリビューション（カーネルのLinux＋諸々のソフトウェア）
である


4. 有名なディストリビューション
ディストリビューションには色んな種類があります。有名なディストリビューションを3つ以上挙げてください。

ベースとなるものによって大きく分けて3つの系統に分類することができる
・Slackware系
・Redhat（rpm）系
Fedora, CentOS
・Debian系
Debian, Ubuntu, Linux mint, elementaryOS, ZorinOS

5. シェル
Linux はコマンドを使って操作をすることが多いです。その際に使用するソフトウェアがシェルです。シェルとは何か、プログラミング初心者にわかるように説明してください。またシェルには色んな種類があり、代表的なシェルを2つ以上挙げてください。

シェル（shell:殻）は、命令する側（人）とカーネルの間の通訳プログラムのこと。
カーネルはユーザーからのコマンドを理解する能力は持っていない。そのため、シェルは受け取ったコマンドをカーネルにわかるように翻訳して伝え、カーネルで処理が終わったら、こちらにわかるように翻訳して結果を表示してくれる。


Linuxにおける代表的なシェル
・bash:Linux系OSにおける広く利用されている標準シェル
・sh:    Unix系のOSで使用できる最古シェル
・zh:    bashやshなどの良い面を取り入れた高機能なシェル





ディレクトリを操作できる
Linux にログインしてターミナル上で行ってください。

1. 現在のディレクトリ
自分が現在いるディレクトリを表示してください。

ec2-user:~ $ pwd
/home/ec2-user


2. ルートディレクトリ
現在のディレクトリから、"/" ディレクトリに移動してください。
ec2-user:~ $ cd /
ec2-user:/ $

3. ホームディレクトリ
現在のディレクトリから、ホームディレクトリに移動してください。
ec2-user:/home $ cd ~
ec2-user:~ $ 


4. 一つ上のディレクトリ
現在のディレクトリから、一つ上の親ディレクトリに移動してください。

ec2-user:~ $ cd ..
ec2-user:/home $ 


5. ディレクトリの内容
現在のディレクトリの内容を表示してください。

ec2-user:/ $ ls
bin  boot  dev  etc  home  lib  lib64  local  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var


6. 隠しファイル
現在のディレクトリの隠しファイルを含む全てのファイルとディレクトリを表示してください。

ec2-user:/ $ ls -a
.  ..  .autorelabel  bin  boot  dev  etc  home  lib  lib64  local  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var




7. 詳細なリスト形式
"/etc" ディレクトリの内容を、詳細なリスト形式で表示してください。

なおわからない場合は、"man ls" コマンドで ls コマンドの詳細を確認することができます。"List files in the long format" といった説明のあるオプションを付けてください。

ec2-user:/etc $ ls -l

total 1272
drwxr-xr-x  4 root root       35 Aug 22 18:26 acpi
-rw-r--r--  1 root root       16 Aug 22 18:27 adjtime
-rw-r--r--  1 root root     1518 Jun  7  2013 aliases
-rw-r--r--  1 root root    12288 Aug 29 13:31 aliases.db
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drwxr-xr-x  2 root root        6 Apr  9  2019 xinetd.d
drwxr-xr-x  6 root root      149 Aug 29 13:40 yum
-rw-r--r--  1 root root      862 Jun 23  2022 yum.conf
drwxr-xr-x  2 root root      118 Aug 29 13:51 yum.repos.d




8. ディレクトリの作成
ホームディレクトリに移動し、"projects" という名前のディレクトリを作成してください。

ec2-user:~ $ mkdir projects
ec2-user:~ $ ls
environment  node_modules  package.json  package-lock.json  projects




9. ディレクトリの削除
作成した "projects" ディレクトリを削除してくださ
ec2-user:~ $ rmdir projects
ec2-user:~ $ ls
environment  node_modules  package.json  package-lock.json






man確認
ec2-user:~ $ man ls
ファイルを操作できる
1. ファイルの中身を出力
/etc/hosts ファイルの中身を出力してください。/etc/hosts ファイルが存在しない場合は、何らかのテキストファイルの中身を出力してください。

ec2-user:/etc $ cat hosts
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
::1         localhost6 localhost6.localdomain6


2. ファイルの中身をスクロール表示
/etc/hosts ファイルの中身をスクロール式で表示してください。/etc/hosts ファイルが存在しない場合は、何らかのテキストファイルの中身を表示してください。

ec2-user:/etc $ less group
(/etc/hosts ファイルが短かったのでgroupで試しました)


3. ファイルの作成
ホームディレクトリの直下に、README.md という名前の空ファイル（中身が空のファイル）をコマンドを利用して作成してください。

ec2-user:~ $ touch README.md
ec2-user:~ $ ls
environment  node_modules  package.json  package-lock.json  README.md  result.txt  root.txt



4. ファイル名の変更
先程作成した README.md ファイルの名前を TMP.md という名前に変更してください。

ec2-user:~ $ mv README.md TMP.md
ec2-user:~ $ ls
environment  node_modules  package.json  package-lock.json  result.txt  root.txt  TMP.md


5. ファイルのコピー
先程作成した TMP.md ファイルをコピーして COPY.md ファイルを作成してください。

ec2-user:~ $ cp TMP.md COPY.md
ec2-user:~ $ ls
COPY.md  environment  node_modules  package.json  package-lock.json  result.txt  root.txt  TMP.md




6. ファイルの削除
先程作成した TMP.md ファイルを削除してください。

ec2-user:~ $ rm TMP.md 
ec2-user:~ $ ls
COPY.md  environment  node_modules  package.json  package-lock.json  result.txt  root.txt


7. シンボリックリンク
作成した README.md に対して、シンボリックリンクを貼ってください。シンボリックリンクのファイル名は README_SYMBOLIC.md としてください。作成後、README.md に対して任意の文章を追記してください。その後、symbolic_file の中身を出力し、追記した内容が README_SYMBOLIC.md にも反映されていることを確認してください。

ec2-user:~ $ touch README.md
ec2-user:~ $ ls
COPY.md  environment  node_modules  package.json  package-lock.json  README.md  result.txt  root.txt
ec2-user:~ $ ln -s README.md README_SYMBOLIC.md
ec2-user:~ $ ls
COPY.md  environment  node_modules  package.json  package-lock.json  README.md  README_SYMBOLIC.md  result.txt  root.txt
ec2-user:~ $ echo testyade > README.md
ec2-user:~ $ cat README.md
testyade
]ec2-user:~ $ cat README_SYMBOLIC.md 
testyade



8. ファイルの検索
ホームディレクトリ以下のファイルに対して、README という文字列が含まれるファイルを全て検索し、出力してください。なお、find コマンドを使用して実現することができます。

ec2-user:~ $ find README*
README.md
README_SYMBOLIC.md


9. 検索
~/sample.txt ファイルを作成し、以下の内容を記載してください。

apple
banana
grape
lemon
その上で、sample.txt ファイルから、"a" で始まる単語を検索してください。なお、grep コマンドを使用して実現することができます。

ec2-user:~ $ echo -e "apple\nbanana\ngrape\nlemon" > ~/sample.txt
ec2-user:~ $ cat sample.txt 
apple
banana
grape
lemon
ec2-user:~ $ grep "^a" sample.txt 
apple






標準入力は、コンピュータがプログラムを実行する際に利用するデータを受け取る 装置 のこと。
例として
キーボードによる具体的な値の入力、別ファイルを用いた入力 (csv ファイルや json ファイルなど指定して中身を実行する）
などがあります。


プログラムがどのような処理を行っているかを確認するには、 処理の途中過程や結果を画面に表示したりファイルを書き出して保存するなど、 何らかの形で出力する必要があります。
ここでは、プログラムを通してさまざまな数字や文字を画面に出力する、標準出力

標準入力	キーボード	コマンドの入力元	0
標準出力	ディスプレイ	コマンドの結果出力先	1
標準エラー出力	ディスプレイ	エラーメッセージの出力先　2


標準入出力を扱える
1. 標準入出力とは
標準入力、標準出力、標準エラー出力について、プログラミング初心者にわかるように説明してください。

標準入力はプログラムに値を渡す入力元のこと。（キーボード入力、別ファイルを用いた入力など）
標準出力はプログラムから出力される値の出力先のこと。
この仕組みを使うと、キーボードやファイルなど外部から値（データ）をプログラムに与えることができます
エラーを伝えるためのメッセージは標準出力ではなく、「標準エラー出力」に出力される

2. リダイレクト
リダイレクトを使用して、ルートディレクトリを ls コマンドで出力した結果を、~/root.txt という新規ファイルに保存してください。

ec2-user:/ $ ls > ~/root.txt
ec2-user:/ $ ls
bin  boot  dev  etc  home  lib  lib64  local  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
ec2-user:/ $ cd ~
ec2-user:~ $ ls
environment  node_modules  package.json  package-lock.json  root.txt
ec2-user:~ $ cat root.txt 
bin
boot
dev
etc
home
lib
lib64
local
media
mnt
opt
proc
root
run
sbin
srv
sys
tmp
usr
var
ec2-user:~ $ 




3. エラー出力のリダイレクト
コマンドを実行してエラーになった際に、エラー結果を ~/error.txt という新規ファイルに保存してください。エラーを発生させるには例えば ls /hoge など、存在しないファイル・ディレクトリを ls コマンドで参照する方法があります。


ec2-user:~ $ ls /hoge 2> ~/error.txt
ec2-user:~ $ ls
environment  error.txt  node_modules  package.json  package-lock.json  root.txt
ec2-user:~ $ cat error.txt
ls: cannot access /hoge: No such file or directory


4. 出力とエラー出力のリダイレクト
ルートディレクトリと存在しないファイルを ls コマンドで一度で参照しようとして( ls / /hoge )、その両方の結果を一度に ~/result.txt という新規ファイルに保存してください。

ec2-user:/ $ ls / /hoge > ~/result.txt 2>&1
ec2-user:/ $ cd ~
ec2-user:~ $ ls
environment  node_modules  package.json  package-lock.json  result.txt  root.txt
ec2-user:~ $ cat result.txt 
ls: cannot access /hoge: No such file or directory
/:
bin
boot
dev
etc
home
lib
lib64
local
media
mnt
opt
proc
root
run
sbin
srv
sys
tmp
usr
var

5. /dev/null とは
/dev/null とは何で、どういう時に使われるものかをプログラミング初心者にわかるように説明してください。

/dev/null は入力元としても出力先としても何も表示されない特殊なファイルのこと。
/dev/null に書き込まれたデータはすべて破棄され、どこからどれだけ読み込んでも何もデータを返さない。
入力先として使われる時は 
空データ入力として使われ、
出力先として使われる時は
結果が大量に出力される場合や、結果を表示する必要性がなく処理を早く終わらせたい場合に、コマンドの出力結果を非表示するために使われる。


6. /dev/null へのリダイレクト
ルートディレクトリを ls コマンドで参照した結果を、/dev/null にリダイレクトし、何も表示されないことを確認してください。

ec2-user:/ $ ls > /dev/null
ec2-user:/ $ cat /dev/null




7. パイプライン
ルートディレクトリを ls コマンドで参照した結果のうち、"l" から始まるものだけを、パイプラインを使用して一回のコマンドで表示してください。

ec2-user:~ $ ls / | grep '^l'
lib
lib64
local












パーミッションを操作できる
1. ファイルのオーナーとグループ
ホームディレクトリの直下に、README.md という名前の空ファイルを作成してください。

その上で、README.md ファイルのオーナーとグループを確認してください。

ec2-user:~ $ touch README.md
ec2-user:~ $ ls
COPY.md  environment  input.txt  node_modules  package.json  package-lock.json  README.md  result.txt  root.txt  sample.txt  test
ec2-user:~ $ ls -l README.md 
-rw-rw-r-- 1 ec2-user ec2-user 0 Sep 20 10:55 README.md


2. ファイルのパーミッション
README.md ファイルのパーミッションを確認し、誰に何の権限が付与されているかを説明してください。

ec2-user:~ $ ls -l README.md 
-rw-rw-r-- 1 ec2-user ec2-user 0 Sep 20 10:55 README.md
「所有者」に「読み取り」と「書き込み」の権限
「所有グループ」に「読み取り」と「書き込み」の権限
「その他」に「読み取り」の権限。


3. ファイルのパーミッションの設定
README.md ファイルのオーナーに対して、読み取り、書き込み、実行の全ての権限を付与してください。

ec2-user:~ $ chmod 764 README.md 
ec2-user:~ $ ls -l README.md 
-rwxrw-r-- 1 ec2-user ec2-user 0 Sep 20 10:55 README.md


4. ディレクトリのパーミッションの設定
ホームディレクトリの直下に、permission という名前の空ディレクトリを作成してください。

permission ディレクトリのグループに対して、書き込み権限を付与してください。

ec2-user:~ $ mkdir permission
ec2-user:~ $ ls
COPY.md  environment  input.txt  node_modules  package.json  package-lock.json  permission  README.md  result.txt  root.txt  sample.txt  test
ec2-user:~ $ ls -dl permission                                                                                                                                                                              
drwxrwxr-x 2 ec2-user ec2-user 6 Sep 20 11:18 permission

ec2-user:~ $ chmod g+w permission
ec2-user:~ $ ls -ld permission/
drwxrwxr-x 2 ec2-user ec2-user 6 Sep 20 11:18 permission/



5. スーパーユーザー
スーパーユーザーとして、ホームディレクトリの直下に superuser という名前の空ディレクトリを作成してください。

作成後、superuser ディレクトリのオーナーが誰かを確認してください。

ec2-user:~ $ sudo mkdir superuser
ec2-user:~ $ ls -dl superuser/
drwxr-xr-x 2 root root 6 Sep 20 11:38 superuser/




プロセス・ジョブを管理できる
1. プロセス
全ユーザーのプロセスを表示してください。

ec2-user:~ $ ps aux

USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.0  0.3  41688  3280 ?        Ss   07:18   0:03 /usr/lib/systemd/systemd --switched-root --system --deserialize 21
root         2  0.0  0.0      0     0 ?        S    07:18   0:00 [kthreadd]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
root     24726  0.0  0.0 114644   724 ?        S    11:50   0:00 sleep 1
ec2-user 24727  0.0  0.3 162296  3788 pts/4    R+   11:50   0:00 ps aux
postfix  27137  0.0  0.4  81816  4580 ?        S    10:37   0:00 pickup -l -t unix -u


2. バックグラウンド
sleep コマンドを利用して処理を100秒停止する処理を、バックグラウンドで実行してください。

ec2-user:~ $ sleep 100 &
[1] 27456
ec2-user:~ $ ps
  PID TTY          TIME CMD
13853 pts/4    00:00:00 bash
13854 pts/4    00:00:00 bash
27456 pts/4    00:00:00 sleep
27478 pts/4    00:00:00 ps


3. プロセス・ジョブの終了
2でバックグラウンドで実行されている sleep コマンドを終了させてください。

ec2-user:~ $ ps
  PID TTY          TIME CMD
13853 pts/4    00:00:00 bash
13854 pts/4    00:00:00 bash
27456 pts/4    00:00:00 sleep
27478 pts/4    00:00:00 ps
ec2-user:~ $ kill 27456
[1]+  Terminated              sleep 100
ec2-user:~ $ ps
  PID TTY          TIME CMD
13853 pts/4    00:00:00 bash
13854 pts/4    00:00:00 bash
27697 pts/4    00:00:00 ps
シェルスクリプトを書くことができる
1. Hello
シェルスクリプトのファイルを作成し、「Hello!」と出力してください。

なお、シェルスクリプトを実行する際にはファイルに実行権限が付与されている必要があることに気を付けてください。

(#hello.shのプログラム)
—-----------------------------
#!/bin/bash

echo "Hello!"
—-----------------------------

ec2-user:~/environment $ ls
hello-cloud9.js  hello.sh  README.md
ec2-user:~/environment $ bash hello.sh
Hello!


2. 標準入力から値を受け取る
シェルスクリプトのファイルに「What's your name?」と出力し、ユーザーに名前の入力を求めます。その後ユーザーが入力した名前に対して、「Welcome, $name!」（$name は入力された名前）と出力する処理を追加してください。

(Welcome.sh)---------------------------

#!/bin/bash

echo "What's your name?"

read name
echo "Welcome, $name!"
—-------------------------------------
ec2-user:~/environment $ bash Welcome.sh 
What's your name?
taku
Welcome, taku!




3. 条件分岐
四則演算を行う電卓を作成してください。実行すると以下の挙動になります。

Enter two numbers:
10 # ユーザーが入力
11 # ユーザーが入力
Choose an arithmetic operation (+, -, *, /):
+ # ユーザーが入力
The result:21
なお、割り算の時の割る数が 0 であるケースや、演算子の記号 +, -, *, / が合致しないケースを考慮するかは任意とします。

(calc.sh)—------------------------------------------------------
#!/bin/bash

echo "Enter two numbers:"

read num1
read num2

echo "Choose an arithmetic operation (+, -, *, /):"
read ope

if [[ $ope == "+" ]] ; then
    num3=$((num1+num2))
elif [[ $ope == "-" ]] ; then
    num3=$((num1-num2))
elif [[ $ope == "*" ]] ; then
    num3=$((num1*num2))
elif [[ $ope == "/" ]] ; then
    num3=$((num1/num2))
# else
#     echo "Invalid operator"
#     exit 1
fi


echo "The result:$num3"

exit 0

—------------------------------------------------------
ec2-user:~/environment $ bash calc.sh 
Enter two numbers:
2
3
Choose an arithmetic operation (+, -, *, /):
+
The result:5



4. 繰り返し処理
for 文 または while 文を利用して、1~100までのうち、偶数の数字を表示する処理を書いてください。以下の結果が出力されます。

2 4 8 ... 100


(even.sh)—----------
#!/bin/bash

count=1

while [ $count -le 100 ]
do
 if [ $((count % 2)) -eq 0 ]; then
    echo $count
 fi
 count=$((count + 1))
done

—---------
ec2-user:~/environment $ bash even.sh
2
4
6
8
10
~~~~~~~~~~~~~~
88
90
92
94
96
98
100





























コミットができる
1.ローカルリポジトリの新規作成
任意の場所に git_practice という名前の新規ディレクトリを作成してください。作成したディレクトリに移動して、Git のローカルリポジトリを新規作成してください。

ubuntu@ip-:~$ mkdir git_practice
ubuntu@ip-:~$ cd git_practice/
ubuntu@ip-:~/git_practice$ git init
Initialized empty Git repository in /home/ubuntu/git_practice/.git/

ubuntu@ip-:~/git_practice$ ls -a
.  ..  .git


2. 変更をステージに追加
作成したディレクトリの下に README.md というファイルを作成してください。次に、作成したファイルをステージに追加してください。

ubuntu@ip-:~/git_practice$ touch README.md
ubuntu@ip-:~/git_practice$ ls
README.md
ubuntu@ip-:~/git_practice$ git add .
ubuntu@ip-:~/git_practice$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   README.md





3. 変更を記録する
ステージに追加した変更をローカルリポジトリに記録してください。なお、変更の記録のことは「コミット」と言います。


ubuntu@ip-:~/git_practice$ git commit -m "initial commit"
[master (root-commit) b7536e4] initial commit
 Committer: Ubuntu <ubuntu@ip-.ap-northeast-1.compute.internal>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

    git config --global --edit

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 README.md



変更状況を確認できる
Git で管理されているディレクトリに移動してください。任意のファイルに何らかの変更を追加してください。

1. 変更状況の確認
現在何のファイルが変更されているかを確認してください。

ubuntu@ip-:~/git_practice$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md





2. 変更内容の確認
何が変更されたか、変更内容を確認してください。

ubuntu@ip-:~/git_practice$ git diff

diff --git a/README.md b/README.md
index 95718c5..4cffc7b 100644
--- a/README.md
+++ b/README.md
@@ -1,3 +1,5 @@
 追加文テスト
 
-test2
\ No newline at end of file
+test2
+
+てす３
\ No newline at end of file


diff --git a/README.md b/README.md
index e69de29..2e93624 100644
--- a/README.md
+++ b/README.md
@@ -0,0 +1 @@
--- a/README.md
+++ b/README.md
@@ -0,0 +1 @@
+追加文テスト
\ No newline at end of file



3. 変更履歴
変更の履歴（ログ）を確認してください。


ubuntu@ip-:~/git_practice$ git log
commit ce4c5ae5ef4dfe37f68374e739f7331b923f40d6 (HEAD -> master)
Author: Ubuntu <ubuntu@ip-.ap-northeast-1.compute.internal>
Date:   Fri Sep 22 11:45:08 2023 +0000

    てすと３を追記

commit 0c9e406332c759a19fb3b57c1fe823d3fa87432b
Author: Ubuntu <ubuntu@ip-.ap-northeast-1.compute.internal>
Date:   Fri Sep 22 11:40:32 2023 +0000

    second commit

commit 7bc0f3e6b3eaf50c4d7d239767e97e9d674497c7
Author: Ubuntu <ubuntu@ip-.ap-northeast-1.compute.internal>
Date:   Fri Sep 22 11:29:15 2023 +0000

    追加文テスト

commit b7536e431be5998993e4954a4170c26fabcf646c
Author: Ubuntu <ubuntu@ip-.ap-northeast-1.compute.internal>
Date:   Fri Sep 22 11:15:56 2023 +0000

    initial commit





変更を元に戻すことができる
Git で管理されているディレクトリに移動してください。任意のファイルに何らかの変更を追加してください。

1. ファイルの変更の取り消し
ファイルへの変更を取り消してください。

ubuntu@ip-:~/git_practice$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
ubuntu@ip-:~/git_practice$ git checkout -- README.md
ubuntu@ip-:~/git_practice$ git status
On branch master


2. ステージの変更の取り消し
任意のファイルに変更を行い、ステージに追加してください。

ステージに追加された変更を取り消して、ワークツリーに戻してください（ステージに変更は追加されておらず、ワークツリーに変更内容が残っている状態にしてください）。


ubuntu@ip-:~/git_practice$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
ubuntu@ip-:~/git_practice$ git add .
ubuntu@ip-:~/git_practice$ git status
On branch master
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   README.md

ubuntu@ip-:~/git_practice$ git reset HEAD README.md
Unstaged changes after reset:
M       README.md
ubuntu@ip-:~/git_practice$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
ubuntu@ip-:~/git_practice$ git checkout -- README.md
ubuntu@ip-:~/git_practice$ git status
On branch master
nothing to commit, working tree clean










GitHub を使って開発を進めることができる
1. リモートリポジトリ
GitHub 上に新規リポジトリを作成してください。

done


2. プッシュ
ローカルの PC 上に GitHub 上で作成したリポジトリの同じ名前のディレクトリを作成し、そのディレクトリ内に README.md　ファイルを作成してください。

次に、ローカルリポジトリを新規作成し、変更をステージに追加、コミットしてください。

リモートリポジトリを登録してください。そして GitHub に変更をプッシュしてください。



ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git init
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git add .
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git commit -m "1st commit test
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git remote add origin https://github.com/Taku1103/Git_APPRENTICE_quests.git
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git remote -v
origin  https://github.com/Taku1103/Git_APPRENTICE_quests.git (fetch)
origin  https://github.com/Taku1103/Git_APPRENTICE_quests.git (push)
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ 
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git push origin master


3. 追加の変更をプッシュ
README.md に変更を追加してください。そしてその変更を GitHub にプッシュしてください。


ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   README.md

no changes added to commit (use "git add" and/or "git commit -a")
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git add .
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git commit -m "README.md に追 記"
[master fb1939d] README.md に追記
 1 file changed, 1 insertion(+)
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git status
On branch master
nothing to commit, working tree clean
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git push origin master




4. クローン
GitHub 上にある他者が作成したリポジトリを自分の PC 上にクローンしてください。クローン対象は何でも良いです。

atomをclone

PS C:\Users\dryos\Documents\Programming\Git_test\atom_test> git clone https://github.com/atom/atom.git







ブランチを利用して開発を進めることができる
Git で管理されているディレクトリに移動してください。

1. ブランチの新規作成
feature という名前のブランチを新規作成してください。

ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git branch
* master
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git branch feature
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git branch
  feature
* master



2. ブランチの切り替え
ローカルリポジトリのブランチを feature ブランチに切り替えてください。

ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git branch
  feature
* master
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git checkout feature
Switched to branch 'feature'
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git branch
* feature
  master
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ 



3. マージ
feature ブランチでファイルの変更を行い、コミットしてください。そしてローカルリポジトリのブランチを main ブランチに切り替えてください。

ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git status
On branch feature
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        feature.html

nothing added to commit but untracked files present (use "git add" to track)
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git add .
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git commit 
[feature 4ac4bd6] feature.html 追加
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 feature.html
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git checkout master
Switched to branch 'master'



次に、feature ブランチの変更を main ブランチに取り込んでください。なお、他のブランチの変更を取り込むことをマージと言います。
git merge feature
Merge made by the 'ort' strategy.
 feature.html | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 feature.html
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git log --oneline
545969e (HEAD -> master) Merge branch 'feature'
0025171 master.htmlファイルの追加
4ac4bd6 (feature) feature.html 追加
fb1939d (origin/master) README.md に追記
4f15012 1st commit test



4. ブランチの名前の変更
feature ブランチの名前を rename という名前に変更してください。

ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git checkout feature
Switched to branch 'feature'
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git branch -m rename
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git branch
  master
* rename


5. ブランチの削除
rename ブランチを削除してください。


ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git checkout master
Switched to branch 'master'
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git branch -d rename
Deleted branch rename (was 4ac4bd6).



GitHub フローに従って開発を進めることができる
GitHub にプッシュをしたことのあるローカルリポジトリ（自分の PC 上のディレクトリ）に移動してください。

1. プルリクエストとは
プルリクエストは何か、何のためにあるかをプログラミング初心者にわかるように説明してください。

プルリクエストとは
自身の変更したコードをリポジトリに取り込むよう依頼する機能。

主にGitHub上ではプルリクエストには
・他の開発者への変更通知
・変更箇所の比較表示
・コメント機能
があり、これらの機能によりコードの変更がマスターブランチ（本番用プログラム）にマージ（取り込み）がなされる前にプロジェクトメンバーの間で相互に修正点をレビュー出来、効率よく開発を進めることができるようになる





2. プルリクエストの作成
以下のことを行い、プルリクエストを作成してください。

ローカル（自分の PC ）で pullrequest ブランチを新規作成し、切り替えてください
任意のファイルに変更を行ってください
変更をコミットしてください
GitHub に pullrequest というブランチ名で変更をプッシュしてください
GitHub を開き、pullrequest ブランチから main ブランチへのプルリクエストを作成してください
変更内容を確認し、問題なければ GitHub 上で変更をマージしてください
GitHub 上の pullrequest ブランチを削除してください


ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git branch pullrequest
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git branch 
* master
  pullrequest
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git switch pullrequest 
Switched to branch 'pullrequest'
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git branch
  master
* pullrequest
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git add .
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git commit
[pullrequest 65eee52] index に追記
 1 file changed, 4 insertions(+), 1 deletion(-)
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git status
On branch pullrequest
nothing to commit, working tree clean
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git push origin pullrequest
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 326 bytes | 326.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote: 
remote: Create a pull request for 'pullrequest' on GitHub by visiting:
remote:      https://github.com/Taku1103/Git_APPRENTICE_quests/pull/new/pullrequest
remote: 
To https://github.com/Taku1103/Git_APPRENTICE_quests.git
 * [new branch]      pullrequest -> pullrequest




３. ローカルへのリポートリポジトリの変更内容の取り込み
ローカルリポジトリのブランチを main ブランチに切り替えてください。

次に、リモートリポジトリ（GitHub）の main ブランチの内容をローカルリポジトリの main ブランチに取り込んでください。

それができたらローカルリポジトリの pullrequest ブランチを削除してください。

※開発を行う際はここから1に戻り、この1~2のステップを繰り返します

ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git switch master
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git pull origin master
remote: Enumerating objects: 1, done.
remote: Counting objects: 100% (1/1), done.
remote: Total 1 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (1/1), 642 bytes | 642.00 KiB/s, done.
From https://github.com/Taku1103/Git_APPRENTICE_quests
 * branch            master     -> FETCH_HEAD
   ce942dc..a5f9549  master     -> origin/master
Updating ce942dc..a5f9549
Fast-forward
 index.html | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)
ubuntu@ip-:~/git_practice/Git_APPRENTICE_quests$ git branch -d pullrequest 
Deleted branch pullrequest (was 65eee52).


4. GitHub フロー
GitHub フロー の公式リファレンスを一読してください。

その上で、今後の開発は GitHub フローに基づいて行ってください。多くの組織における基本的な開発フローは GitHub フローもしくは GitHub フローをベースにしたものになります。今から GitHub フローに慣れていきましょう。

done
