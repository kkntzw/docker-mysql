# Docker MySQL
Dockerを用いたWebアプリケーションの開発環境を構築する。  

## 前提条件
`docker`, `docker compose` が利用できる環境を想定している。  
[Docker Dev](https://github.com/kkntzw/docker-dev)の環境が構築済みであると想定している。  

## 環境構築
1. [当リポジトリをクローンする。](#当リポジトリをクローンする)
1. [ファイル名を.env.exampleから.envに変更する。](#ファイル名をenvexampleからenvに変更する)
1. [.envの環境変数を設定する。](#envの環境変数を設定する)
1. [コンテナを構築する。](#コンテナを構築する)

### 当リポジトリをクローンする
```bash
cd ${任意のディレクトリ}
git clone https://github.com/kkntzw/docker-mysql.git
cd docker-mysql
```

### ファイル名を.env.exampleから.envに変更する
```bash
mv .env.example .env
```

### .envの環境変数を設定する
```bash
vi .env
```

| 環境変数名 | 概要 |
| --- | --- |
| MYSQL_PASSWORD | MySQLのパスワード |
| MYSQL_ROOT_PASSWORD | MySQLの管理者のパスワード |
| MYSQL_USER | MySQLのユーザ名 |

### コンテナを構築する
```bash
docker compose up -d
```

## 使用例
1. [コマンドラインから操作する。](#コマンドラインから操作する)
1. [ブラウザから操作する。](#ブラウザから操作する)
1. [コンテナから接続する。](#コンテナから接続する)

### コマンドラインから操作する
```bash
docker compose exec mysql mysql -u ${MYSQL_USER} -p
```

### ブラウザから操作する
[phpmyadmin.localhost](http://phpmyadmin.localhost)にアクセスする。  

### コンテナから接続する
URIに `mysql:3306` を指定する。  
