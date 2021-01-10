# README

# アプリ名
mini-talk-app

<br>

# URL
Herokuによるデプロイ
https://mini-talk-app-20210110.herokuapp.com/
<br>

# 説明

Action Cableを用いて、メッセージを送信した時に即時に更新されるチャットアプリです。
<br>
https://user-images.githubusercontent.com/68714247/104112228-80899280-532f-11eb-8c5d-808446533d0c.mp4
<br>

# ER図

[erd.pdf](https://github.com/erika618/mini_talk_app/files/5791971/erd.pdf)

# テーブル設計

## messages テーブル

| Column   | Type    | 
| :------- | :-----  | 
| text     | text    | 
<br>

# 使用しているバージョン等

- ruby 2.6.5
- Rails 6.0.3.4
- MySQL

【注意・補足】
デプロイで使用する場合にはDBを「Redis」か「PostgreSQL」にて新規作成した方が良い。
こちらのアプリは、Mysqlのため、サブスプリクションのアダプタ設定を「Async」にて作成。

<br>

# clone
```
% git clone https://github.com/erika618/mini_talk_app.git
% cd mini_talk_app
% bundle install
% yarn install
% rails db:create
% rails db:migrate
```

<br>

# その他使用しているgem・使うコマンド
```
<!-- brakeman（脆弱性に繋がるコードがないか確認するため ※全てのファイル・全ての警告オプション） -->
% bundle exec brakeman -A -w1

<!-- rails_best_practices（読みやすいコードか確認するため） -->
% rails_best_practices .

<!-- rubocop（インデントを整えるため） -->
% bundle exec rubocop -a

```