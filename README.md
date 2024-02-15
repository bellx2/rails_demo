# Dockerを使ったRails開発

DockerとVSCodeの開発コンテナ機能を使ってRailsの開発環境を構築する手順です。

## Dockerの基本コンテナの作成
- Dockerfile(Ruby環境)を作成する
  - FROM: ruby:3.3.0
- VSCodeから「開発コンテナ構成ファイルを追加..」を選択
- 「ワークスペースに構成を追加する」で「Dockerfileから」を選択
  - .devcontainerディレクトリが作成される
- 「コンテナで再度開く」を選択し、コンテナで実行する
- 「新しいターミナル」を開く
- ```bundle init```でGemfileが作成される
- Gemfileの「# gem 'rails'」をコメントを外す（#を取り除く）
- ```bundle install```
- ```bundle exec rails new .```
  - Gemfileは上書き。それ以外は上書きしない。
- ```bundle exec rails g controller app index```
- ```bundle exec rails s```で実行

## Bootstrapを導入
- Bootstrap CDNを使うように変更
  - https://getbootstrap.jp/docs/5.3/getting-started/introduction/
  - ```app/views/layouts/application.html.erb```にBootstrapのCDNを追加
- BootstrapIconを導入
  - https://icons.getbootstrap.jp/
  - ```app/views/layouts/application.html.erb```にBootstrapIconのCDNを追加
