# rails_projects
I make websites and applications at my job.

インスタンス変数
インスタンスごとに独立して持つ変数。
クラス変数の場合は、そのクラスの全てのインスタンスで共有される変数のことを指す

ERB
embedded Rubyの略
htmlの中にrubyのコードを埋め込むことができる
テンプレートエンジンの一種

mygrationファイル
→ データベースに変更を加えるファイル

使用したコード
'''
rails s サーバー立ち上げのコマンド
rails g controller users index # コントローラーを作成したい時の合言葉
rails g model User name:string age:integer # モデルを作成するコマンド
rails db:migrate # データベースを作成変更

rails dbconsole # データベース操作できる
sqlite> .table　#どんなテーブルがあるのか確認
sqlite> .schema users #データベースの中身を見る
sqlite> .q　#コンソールからの脱出

# データベースの操作
rails c 
irb(main):001:0> User.all #全部出してくれる
irb(main):026:0> user = User.new
irb(main):026:0> user.name = 'hanako yamada' #データベースに書き込み 
irb(main):027:0> user.save #データをセーブ

# データの呼び出し
irb(main):030:0> User.find(2) #selet的なやつ

# データの変更
yamada = User.find(2)
irb(main):048:0> yamada.name = "taro tanaka"
irb(main):048:0> yamada.age = 21
irb(main):048:0> yamada.save
'''

development.rb
config.hosts.clear #ホストのホワイトリストを無効にする

MVCモデルの概念図
<img width="1230" alt="スクリーンショット 0004-07-05 午前11 55 12" src="https://user-images.githubusercontent.com/66200485/177240347-8fc35dc2-74b4-4bc9-9c20-827cd579a313.png">

サーバーをストップさせる
$ lsof -wni tcp:3000
$ kill -9 （PID）

class QuestionsController < ApplicationController
  # 1. 質問一覧表示
  def index 
  end

  # 2. 質問詳細ページ表示
  def show
  end

  # 3. 質問の作成
  def new
  end

  # 4. 質問の登録
  def create
  end

  # 5. 質問の編集
  def edit
  end

  # 6. 質問の削除
  def destroy
  end

end

プロジェクトの作成
rails new qanda _7.0.0_

questions のコントローラー、モデルaを作る
rails g controller questions
rails g model Question name:string title:string content:text
rails db:migrate #dbに反映する
rails dbconsole
rails routes 自動作成してくれる

sqlite> .schema questions #DBの確認

MVP（Minimum Viable Product）
実用最小限の製品
＜今回作るもの＞
- 質問を「投稿」「編集」「削除」「回答」「一覧確認」できる
- 回答を「編集」「削除」「回答」「一覧表示」できる
<img width="338" alt="スクリーンショット 0004-07-05 午後3 28 46" src="https://user-images.githubusercontent.com/66200485/177263604-d27597d4-2399-48f2-ac5c-2c02af852925.png">

ルーティングの設定
URlとアクションを結びつける作業
routes.rbにて
resources :questions でルーティングを自動生成してくれる
<img width="1051" alt="スクリーンショット 0004-07-05 午後3 41 11" src="https://user-images.githubusercontent.com/66200485/177265555-e1efc28f-8b31-4a76-8849-5706820f7e95.png">

ストロングパラメータ



<img width="338" alt="スクリーンショット 0004-07-05 午後3 28 46" src="https://user-images.githubusercontent.com/66200485/177263604-d27597d4-2399-48f2-ac5c-2c02af852925.png">

アクティブレコード
SQLを書かなくても生成してくれる
