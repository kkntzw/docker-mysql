# docker-mysql
MySQL 向けの Docker を用いた開発環境

## 前提条件
`docker`, `docker-compose` が使える環境を想定している。  
[`docker-dev`](https://github.com/kkntzw/docker-dev)の環境が構築済みであるのを想定している。  

## 環境構築
1. [当リポジトリを Clone する。](#当リポジトリを-clone-する)
1. [`docker-compose.example.yml` から `docker-compose.yml` に拡張子を変更する。](#docker-composeexampleyml-から-docker-composeyml-に拡張子を変更する)
1. [`docker-compose.yml` の環境変数を設定する。](#docker-composeyml-の環境変数を設定する)
1. [`1.0__grant_privileges.sql` のユーザ名を設定する。](#10__grant_privilegessql-のユーザ名を設定する)
1. [コンテナを構築する。](#コンテナを構築する)

### 当リポジトリを Clone する
```bash
cd ${任意のディレクトリ}
git clone https://github.com/kkntzw/docker-mysql.git
cd docker-mysql
```

### `docker-compose.example.yml` から `docker-compose.yml` に拡張子を変更する
```bash
mv docker-compose.example.yml docker-compose.yml
```

### `docker-compose.yml` の環境変数を設定する
```bash
vi docker-compose.yml
```

| 環境変数名 | 概要 |
| --- | --- |
| MYSQL_ROOT_PASSWORD | MySQL の管理者のパスワード |
| MYSQL_USER | MySQL のユーザ名 |
| MYSQL_PASSWORD | MySQL のパスワード |

### `1.0__grant_privileges.sql` のユーザ名を設定する
```bash
vi ./init/1.0__grant_privileges.sql
```

| 環境変数名 | 概要 |
| --- | --- |
| MYSQL_USER | MySQL のユーザ名 |

### コンテナを構築する
```bash
docker-compose up -d --build
```

## 開発
1. [コマンドラインから操作する。](#コマンドラインから操作する)
1. [ブラウザから操作する。](#ブラウザから操作する)
1. [他コンテナから利用する。](#他コンテナから利用する)

### コマンドラインから操作する
```bash
docker-compose exec mysql mysql -u ${ユーザ名} -p
```

### ブラウザから操作する
[mysql.localhost](http://mysql.localhost) へアクセスする。

### 他コンテナから利用する
`mysql:3306` をURIとして指定する。
