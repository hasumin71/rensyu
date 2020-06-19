#1 ~100までの番号が書かれた100枚のカードが順番に並べられています。
#最初は全て裏返し
#ある人が二番のカードから一枚置きにカードを裏返していきます。

#カードの初期化
N = 100 
cards = Array.new(N, false) #第一引数は作成する要素数#配列のなかに要素がN個あって、全てにfalseを入れる)

(2..N).each do |i|
  j = i - 1 #めくるカード番号二番目の場合は一枚置きに
  while j < cards.size do #cards.sizeは
    cards[j] = !cards[j]
    j += i
  end  
