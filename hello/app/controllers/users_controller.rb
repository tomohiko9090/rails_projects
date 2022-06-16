class UsersController < ApplicationController
  def index 
    @num = 10 + 1 #numはインスタンス変数
    # render plain: "Hello World!"# renderメソッド → ブラウザで表示するためのレンダリングするやつ
  end
end
