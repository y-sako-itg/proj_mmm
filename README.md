
# プロジェクトテンプレート

## はじめに

- これはMMMプロジェクト用のテンプレートです。

- 任意のワークステーション上にテンプレートリポジトリをクローンして使う想定

```{bash}
# for config
$ export GIT_EMAIL=YOUR-EMAIL
$ export GIT_USER=YOUR-USERNAME
$ export GIT_TOKEN=YOUR-TOKEN
$ export GIT_REPOSITORY=y-sako-itg/proj_mmm.git

# for git
$ git config --local user.name ${GIT_USER}
$ git config --local user.email ${GIT_EMAIL}
$ git clone https://${GIT_USER}:${GIT_TOKEN}@github.com/${GIT_REPOSITORY} .
```

```{}
# ディレクトリ構成は以下

project_dir
    │
    ├── .github/           <- GitHub(Bitbucket)の設定用
    │
    ├── .vscode/           <- VSCodeの設定用
    │
    ├── dev/               <- 環境構築用ファイル
    │
    ├── data/              <- データ用(任意のファイルサーバーをマウントなど)
    │
    ├── eda/               <- 探索的分析用
    │
    ├── model/             <- モデリング用(モデルオブジェクトなど)
    │
    ├── output/            <- アウトプット用
    │
    ├── src/               <- ソースコード用
    │
    ├── share/             <- 結果共有用(htmlレポートやAppを配置)
    │
    ├── .dockerignore
    │
    ├── .gitignore
    │
    └── README.md          <- プロジェクトテンプレートの説明はこちら
```

## 環境構築

- 以下の要領で.envファイルをdevディレクトリ直下に作成

```{bash}
$ cd dev
```

```{}
# .env
COMPOSE_PROJECT_NAME=xxxx        # プロジェクト名(任意)
IMAGE_NAME=xxxx                  # イメージ名(任意)
CONTAINER_NAME=xxxx              # コンテナ名(任意)
PORTS_NUM_RSTUDIO=xxxx           # RStudio用のポート番号(空きポートを選択)
PORTS_NUM_SHINY=xxxx             # Shiny用のポート番号(空きポートを選択)
```

```{bash}
$ docker-compose up -d
```

## 分析

- project-dir直下にproject.qmd

- 汎用コードなどはsrcディレクトリに格納して読み出すイメージ

## 結果共有

- 分析結果はshareディレクトリに配置して共有

- 静的なレポート → .qmd

- 動的なアウトプット → Shiny or Streamlit

