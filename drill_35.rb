#クラスの定義は、一般的には以下の記述が用いられます。
=begin
class User
   ブロックの内部で各種メソッドを定義
end

#例②
self.class.const_set :'Tweet', Class.new do 
  # ブロックの内部で各種メソッドを定義
end
=end

#しかしながら、この記述法以外にも、Rubyにはクラスを定義する方法が用意されています。
#①上記のclass クラス名 end;という記述を用いないで、Tweetというクラスを定義してください。

Tweet = Class.new do
  
end

#上記のメリットを答えよ
#解答
#ブロック外の変数を用いることができる。
#２の解答
=begin
class Product
  def self.create_new_class(class_name)
    # 引数の値に応じて、クラスを作成する
    self.class.const_set :"#{class_name}", Class.new
  end
end

=end
