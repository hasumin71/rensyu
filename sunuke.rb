#nはす抜け君の数 #kがお菓子の種類の数 #
N, K = gets.split.map(&:to_i)
cnt = [0]*N #す抜け君の人数をcntにかける #いまは[0,0,0]の様な感じ
K.times do #お菓子の種類を回す
  d = gets.to_i #dがお菓子を持っている人数
  a = gets.split.map(&:to_i) #aがお菓子を持っているすぬけくんのナンバー [1,3]
  a.each do |v| #お菓子を持っているすぬけ君を回す
    cnt[v-1] += 1 #cntのインデックス番号の値に一足す
  end
end
#何人のすぬけ君がいじめられるか
p cnt.select{|v| v==0}.size #selectメソッドとは {|変数|ブロック処理}の条件が一致した値のみを選出する #size配列の要素の数を調べる

#入力例
3 2 #3がすぬけの数 #2がお菓子の種類の数
2 #2が種類1のお菓子を持っているsunukeの人数
1 3 #人数の詳細
1 #種類2のお菓子を持っているsunukeの人数
3 #詳細