
# プロジェクトテンプレート

## これは何や!?

- データ分析プロジェクト用のテンプレート

- 任意のワークステーション上にテンプレートリポジトリをクローンして使う想定

```{bash}

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
COMPOSE_PROJECT_NAME=quarto_common  # プロジェクト名(任意)
IMAGE_NAME=quarto_common            # イメージ名(任意)
CONTAINER_NAME=quarto_common        # コンテナ名(任意)
PORTS_NUM_RSTUDIO=8901              # RStudio用のポート番号(空きポートを選択)
PORTS_NUM_SHINY=8902                # Shiny用のポート番号(空きポートを選択)
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

