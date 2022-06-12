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

