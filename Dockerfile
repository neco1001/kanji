# Rubyのベースイメージを指定
FROM ruby:3.1.2

# 作業ディレクトリの設定
WORKDIR /app

# 必要なパッケージのインストール
RUN apt-get update -qq && apt-get install -y \
  curl \
  default-mysql-client \
  && curl -sL https://deb.nodesource.com/setup_16.x | bash - && \
  apt-get install -y nodejs && \
  npm install --global yarn && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# GemfileとGemfile.lockをコピー
COPY Gemfile Gemfile.lock ./

# Bundlerを使ってGemをインストール
RUN bundle install

# アプリケーションコードをコピー
COPY . .

# ポートの公開
EXPOSE 3000

# アプリケーションの起動コマンド
CMD ["rails", "server", "-b", "0.0.0.0"]
