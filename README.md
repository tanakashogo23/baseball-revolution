# README

## アプリ名 
###  baseball revolution

## 概要 
### このアプリは草野球の練習試合を組む際に誰でも自由に利用できる交流型掲示板です

## 本番環境
### デプロイ先 https://baseball-revolution.herokuapp.com/ テストアカウント名 test太郎 パスワード a11111

## DEMO


## 制作背景
### このアプリの制作背景と致しましては、私自身が趣味で草野球をしておりまして、そこでチームの代表をつとめているのですがインターネットを通じて練習試合相手を探す際にあまりサービスが充実しておらず、不便を感じたからです。またそれは、他チームの代表をしている方々も感じているものでした。そこで、私が自分の今持っているスキルでなんとか今の状況より便利に出来ないかと考え、形にしたのがこのアプリです。

## 工夫したポイント
### 草野球には40代以上の方も多くいらっしゃるので出来るだけ扱いやすくて見やすいようにと心掛けました。ビューに関しましても見やすい配色パターンなどを調べて取り入れました。コメント機能におきましてはページ内で募集が完結できるように工夫致しました。

## 使用したプログラミング言語
### Ruby

## 使用したフレームワーク
### Ruby on Rayls

## 使用したツール
### GitHub

## 課題や今後実装したい機能
### 課題はルール道りに使用して頂けるかどうか。管理人を置くかどうか。今後、実装したい機能に致しましては、APIを使用しての天気予報情報の取得とグーグルマップの情報を取得し現在地から試合が行われる場所までの推定時間の表示。試合が行われるグランドの画像の投稿機能。非同期通信を使用してのイイねボタンの追加。

## DB設計
### postsテーブル

|Coluumn|Type|Options|
|-------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|title|text|null: false|
|content|text|null: false|
|image|string|-------|

### Association
* belongs_to :user
* has_many :comments

### usersテーブル

|Coluumn|Type|Options|
|-------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false, unique:true|

### Association
* has_many :posts
* has_many :comments 

### commentsテーブル

|Coluumn|Type|Options|
|-------|----|-------|
|text|text|null: false|
|post_id|refernces|null: false, foreign_key: true|
|user_id|refernces|null: false, foreign_key: true|

### Association

* belongs_to :post 
* belongs_to :user