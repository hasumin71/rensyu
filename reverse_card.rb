#1 ~100までの番号が書かれた100枚のカードが順番に並べられています。
#最初は全て裏返し
#ある人が二番のカードから一枚置きにカードを裏返していきます。

#カードの初期化
N = 100
cards = Array.new(N, false)

#2 ~ Nまで裏返す
(2..N).each{ |i|
  j = i-1
  while (j < cards.size) do
    cards[j] = !cards[j]
    j += 1
  end
}

#裏向きのカードを出力
N.times{|i|
  puts i + 1 if !cards[i]
}