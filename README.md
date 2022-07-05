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


questions のコントローラーを作る
rails g controller questions

MVP（Minimum Viable Product）
実用最小限の製品
＜今回作るもの＞
- 質問を「投稿」「編集」「削除」「回答」「一覧確認」できる
- 回答を「編集」「削除」「回答」「一覧表示」できる

