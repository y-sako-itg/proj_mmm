# ベースイメージ（任意のrocker/*に変更可能）
FROM rocker/verse:latest

# OS環境設定
## 日本語ロケールを追加し切り替え
ENV LANG ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
RUN sed -i '$d' /etc/locale.gen \
      && echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen \
      && locale-gen ja_JP.UTF-8 \
      && /usr/sbin/update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
RUN /bin/bash -c "source /etc/default/locale"
RUN ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
## 日本語フォントをインストール
RUN apt-get update && apt-get install -y \
      fonts-ipaexfont \
      fonts-noto-cjk

# パッケージのインストール
## 汎用
RUN install2.r --error --deps TRUE --ncpus -1\
      pacman \
      rmdformats \
      systemfonts \
      janitor \
      data.table \
      progress \
      RVerbalExpressions \
      png \
      reticulate \
      markdown \
      svglite \
      DT \
      gt
      
## 統計モデリング用
RUN install2.r --error --ncpus -1\
      performance \
      parameters \
      see \
      rstan \
      tidybayes \
      brms 

## MMM(Robyn)
RUN install2.r --error --ncpus -1\
      Robyn

# Quartoのインストール
RUN /rocker_scripts/install_quarto.sh

# Shinyのインストール
RUN /rocker_scripts/install_shiny_server.sh

# Pythonのインストール
RUN apt-get update && apt-get install -y python3 python3-pip

# ライブラリのインストール
## 汎用
RUN pip install -U pip \
      && pip install --no-cache-dir jupyter \
      && pip install --no-cache-dir pandas \
      && pip install --no-cache-dir numpy

## MMM(lightweightMMM)
RUN pip install -U pip \
      && pip install --no-cache-dir lightweight_mmm
