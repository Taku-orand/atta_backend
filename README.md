# アプリケーション名
 ## ATTA（アッタ）
# アプリケーションの概要
  このアプリケーションは、よく落とし物をする方のためサービスです。
# URL

アプリケーション： https://atta-app.herokuapp.com

フロントエンド(Github)： https://github.com/Takuyazzz/atta_frontend

# テスト用アカウント

メールアドレス: test@test.com

パスワード: Xk8iBcqS

# 利用方法


## サインイン、サインアップ方法
 1. TOPページから「使ってみる」ボタンを押します。
 2. メールアドレスとパスワードを入力していただくか、Googleでログインもできます。
 3. デモで機能を確認したい場合はメールアドレスに test@test.com, パスワードに Xk8iBcqS と入力してください。
<img src="https://user-images.githubusercontent.com/69229592/135602296-2b0a487c-2340-4562-b003-1f2e720492c9.gif" height="400">


## アイテム登録方法とQRコード発行
 1. アイテム一覧ページから「アイテム追加」ボタンを押します。
 2. アイテム名とアイテム情報を入力してください。
 3. 入力が完了したら「追加」ボタンを押すことでアイテム登録は完了します。
 4. QRコード発行はアイテム詳細ページで サイズ を入力してください。
 5. サイズの入力を終えたら、「QRCODEを作成」ボタンを押す。
 6. そこで確認画面がでてきますが、「OK」を押すとQRコードが画面に表示されます。<br />
 (QRコードは再発行できますが、以前のものは使えなくなります)
<img src="https://user-images.githubusercontent.com/69229592/135602907-469ec135-bbd0-4578-b987-3ace16ceb8d4.gif" height="400">

## アイテム編集方法
 1. アイテム詳細ページから上部の「名前」「内容」あたりを押す。
 2. すると、入力画面に切り替わりますのでそこで編集してください。
 3. 編集が終わりましたら、「保存」ボタンを押し編集は完了となります。
<img src="https://user-images.githubusercontent.com/69229592/135602366-c5b384df-e229-47f6-9192-a8228b5d5069.gif" height="400">

## アイテム削除方法
 1. アイテム一覧ページから削除したいアイテムを選んでください。
 2. アイテム詳細ページの下部に「削除」ボタンががありますので、そのボタンから削除することができます。
<img src="https://user-images.githubusercontent.com/69229592/135602997-4c9dc9cd-e65c-4c2b-aa65-ea2bd7fb055e.gif" height="400">

## アイテム発見時操作方法
 1. QRコードをスマートフォンなので読み取ってください。
 2. すると、アイテム発見ページへの案内が表示されますので、そのページに遷移してくだい。
 3. 入力欄がありますので、「落とし物の発見場所」「落とし物の現在地」「落とし物の詳細位置情報」を入力してください。
 4. 入力を終えると、「持ち主に知らせる」ボタンを押し持ち主に落とし物情報が届くようになります。
<img src="https://user-images.githubusercontent.com/69229592/135601906-2dd1b285-bc91-444d-9d7e-c2b6521daf38.gif" height="400">
持ち主に届くメール（例）
<img src="https://user-images.githubusercontent.com/69229592/136311204-fb630966-bded-4caf-bc59-e00d4253424e.png" height="400">

# 目指した課題解決
このアプリケーションは特に以下のような悩みを持つ人を想定しています。
- よく落とし物をする
- 落とし物を探してるけど見つからない

このアプリケーションでは、アイテムを登録していただきQRコードを発行し落とし物にくっつけることで、落とし物をした際にもし誰かが見つけたときにQRコードから持ち主にお知らせを届けることができます。

# 使用技術
使用技術はNuxt.js ruby on rails, mysql, google map, heroku（デプロイ用）

# クラス図
![クラス図 drawio](https://user-images.githubusercontent.com/69229592/136312317-94837f9c-c10f-470e-87fc-2772edd21a24.png)

# ER図
![ER図 drawio](https://user-images.githubusercontent.com/69229592/136312348-b5662216-6580-4633-a7f3-546178d549c1.png)

# 画面設計案（初期）
![画面設計案 drawio](https://user-images.githubusercontent.com/69229592/136312367-4488a70d-ffdc-4486-afbb-376862244164.png)


# API
| METHOD | URL | DESCRIPTION |
|:---:|:---:|:---:|
| GET | /api/v1/users | ユーザー情報を取得する |
| PATCH | /api/v1/users | ユーザー情報をアップデートする |
| GET | /api/v1/items | ユーザーが登録したアイテムを全取得する |
| GET | /api/v1/items/:id | idに対応するアイテムを取得する |
| POST | /api/v1/items | アイテムを作成する |
| PATCH | /api/v1/items/:id | アイテムをアップデートする |
| DELETE | /api/v1/items/:id | アイテムを削除する |
| GET | /api/v1/lost_items/:id | idに対応するアイテムを取得する |
| POST | /api/v1/lost_items/:id | 落とし物情報をメールで通知する |
| POST | /api/v1/lost_items/verificate_qrcode | QRコードが有効かどうか判別する |
| GET | /api/v1/lost_item_infomations/:id | idに対応するアイテムに関連する落とし物情報を取得する |
| POST | /api/v1/lost_item_infomations | idに対応するアイテムに関連する落とし物情報を保存する |
| DELETE | /api/v1/lost_item_infomations/:id | idに対応する落とし物情報を削除する |
