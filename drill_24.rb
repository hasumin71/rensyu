class Book
  attr_reader :title, :price #attr_readerと書くことでクラスの外から以下のインスタンス変数にアクセスすることができる

  def initialize(title, price) #クラスの初期設定をすることができるのがinitializeメソッド #クラスというものを使うことでその散らかった部屋を整理して生産性の高いプログラミングをすることができる
    @title = title  #その定義した変数はクラス内で使用することができる
    @price = price
  end
end

book = Book.new("プロを目指す人のためのRuby入門", 3218) #クラスのインスタンスを生成するときに一緒に引数の値を置く
puts book.title

#attr_accesorはゲッターとセッターを同時に定義することができる便利なもの(これを知るためにはまずclassを知る必要がある)
#attr_readerはインスタンス変数にアクセスするためのゲッター
#attr_writerはインスタンス変数にアクセスするためのセッター
=begin
#失敗例
class User
  @name = ""
end

user = User.new
user.name = "taro"
p user.name

#=>rb:6:in `': undefined method `name=' for # (NoMethodError)
#このままだとインスタンス変数はクラスインスタンス変数と違う変数で定義されてしまう。

#attr_accesor
class Human
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
 
human = Human.new("taro")
puts human.name
human.name = "siro"
puts human.name

#実行結果
#taro
#siro

=end
