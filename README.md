# SQL講習：開発環境構築・操作マニュアル

このリポジトリは、Dockerを使ってローカル環境にMySQLデータベースを立ち上げ、SQLの学習を行うための環境です。
データの閲覧やクエリの実行には、GUIツールである **DBeaver** を使用します。

---

## 1. 事前準備

事前に各自のPCに以下のツールをインストールしておいてください。
1. **Docker Desktop**（コンテナ環境）
2. **DBeaver**（データベース閲覧・操作ツール）

---

## 2. Dockerコンテナの基本操作

コマンドライン（ターミナル / コマンドプロンプト）を起動し、このリポジトリのルートディレクトリで実行してください。

### コンテナの起動（バックグラウンド実行）
```sh
docker compose up -d
```
*※ 初回起動時、または `init.sql` を書き換えた後は `--build` をつけて実行してください： `docker compose up -d --build`*
*※ `-d` をつけることで、ターミナルを占有せずにバックグラウンドで起動できます。*

### コンテナの停止
```sh
docker compose stop
```

### コンテナの削除（データの永続化は維持）
```sh
docker compose down
```

### ⚠️ データの初期化・リセット（困ったときはこれ！）
SQLの練習中にデータを壊してしまい、最初から（`init.sql` の状態に）やり直したい場合は、以下のコマンドを実行してください。保存されているデータごとコンテナを完全に削除し、次回起動時に初期化されます。
```sh
docker compose down -v
```


### コンテナに入る

``` sh
docker compose exec mysql /bin/bash
```

### mysqlにrootユーザーでログイン

``` sh
mysql -u root -p
```

### パスワードを入力

``` sh
# ※入力しても反映されないので注意
rootPassword
```

### コンテナを修了する

``` sh
# ※docker compose up --build もしくは docker compose upで起動している場合
Ctrl + C
```

---

## 3. DBeaverの簡単な使い方

Dockerコンテナを起動した状態で、DBeaverを開いてデータベースに接続します。

### 3.1 データベースへの接続手順

1. DBeaverを開き、画面左上の **「新しい接続」プラグのアイコン**（または `Ctrl + Shift + N`）をクリックします。
2. データベースの選択画面で **MySQL** を選択し、「次へ」をクリックします。
3. 接続設定（Mainタブ）に以下の情報を入力します。

   | 項目 | 設定値 | 備考 |
   | :--- | :--- | :--- |
   | **Server Host** | `localhost` | そのままでOK |
   | **Port** | `3306` | そのままでOK |
   | **Database** | `sample` | 初期作成されるDB名 |
   | **Username** | `user` | 一般ユーザー（rootでも可） |
   | **Password** | `password` | userのパスワード（rootの場合は `rootPassword`） |

4. 左下の **「テスト接続 (Test Connection)」** をクリックします。
   *※ 初回接続時、ドライバーのダウンロードを求められた場合は「ダウンロード」をクリックしてください。*
5. 「接続成功」と表示されたら、右下の **「終了 (Finish)」** をクリックして完了です。

### 3.2 SQLの実行手順（ハンズオンの進め方）

1. 画面左側の「データベースナビゲータ」に表示された `localhost` の上で右クリックします。
2. **「SQL編集 (SQL Editor)」 -> 「最近のSQLスクリプト (Open SQL console)」** をクリックして、白い入力画面（エディタ）を開きます。
3. エディタに実行したいSQLクエリを記述します。
4. クエリを記述したら、以下のショートカットを使って実行します。

   - **`Ctrl + Enter` (Macは `Cmd + Enter`) ：** カーソルがある行（または選択した部分）のSQLを実行します。
   - **`Alt + X` (Macは `Cmd + Alt + X`) ：** スクリプト全体を上から順番に実行します。

5. 画面下部に実行結果（データ一覧やエラーメッセージ）が表示されます。





# コマンド一覧

## コンテナ起動

``` sh
docker compose up --build
```

## コンテナに入る

``` sh
docker compose exec mysql /bin/bash
```

## mysqlにrootユーザーでログイン

``` sh
mysql -u root -p
```

## パスワードを入力

``` sh
# ※入力しても反映されないので注意
rootPassword
```

## コンテナを修了する

``` sh
# ※docker compose up --build もしくは docker compose upで起動している場合
Ctrl + C
```

## コンテナを削除する

``` sh
docker compose down -v
```
