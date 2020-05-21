=begin
#文字の重複カウント
query = gets.chomp
source = gets.chomp

puts source.count(query)

#指定範囲だけ大文字
nums = gets.chomp.split(' ') #複数の値をスペース区切りで取得
str = gets.chomp #文字列を取得

(1..(str.size)).each do |i| #1からストリングの文字数分回す
  if nums[0].to_i <= i && i <= nums[1].to_i #もしiがnum1以上、かつiがnum2以下なら
    print str[i - 1].upcase #文字列のiを大文字にする
  else
    print str[i - 1]  #そうでなければ普通に出力
  end
end

#スペース区切りの2つの整数が入力されるので、その区間の全ての整数を順に表示してください。
a,b = gets.chomp.split(" ")
for i in (a.to_i)..(b.to_i) do
  puts i
end   

nums = gets.chomp.split(" ") #スペース区切りの二つの値を配列として取得(スペースで区切る)
str = gets.chomp.split("") #文字列を分割して配列として取得(一文字だけ区切る)

for i in (nums[0].to_i - 1)..(nums[1].to_i - 1) #nums1から(..)nums2の範囲のiを回す
    print str[i]
end


#与えられた二つの値の間を順番に出力
a,b = gets.chomp.split #二つの値を配列として取得

for n in a.to_i..b.to_i do  #整数a〜bの値(n)を順番に回す
  p #nを出力
end

#文字列の一文字めを取得
str = gets.chomp
puts str[0...1]

count = gets.chomp.to_i #行数を指定する値を取得
sum = 0 #合計値を意味する変数の初期値設定

(1..count).each do #一から取得した値まで繰り返す。
    line = gets.chomp.split(" ") #二つの整数を一定の規則で区切って配列にする処理
    if line[0].to_i == line[1].to_i #もしインデックス0と1が同じ値だったら . . .
        sum += line[0].to_i * line[1].to_i #sumに,ind[1]と[2]をかけてsumに足す
    else    #そうじゃなかったら
        sum += line[0].to_i + line[1].to_i  #1と２を足してsumに足す
    end
end

puts sums

#配列の要素の整数に変換するメソッド
.map!(&:to_i)


#配列の奇数番目と偶数番目を取り出す方法
ary = [1,2,3,4,5,6,7,8,9,10]
odd = ary.each_slice(2).map(&:first) #配列の要素を二つずつ取り出し、mapメソッドでさらに際配列し,書く配列の最初の要素を変数に代入。
even = ary.each_slice(2).map(&:last) #上記とだいたい同じ。#each_sliceは引数に渡した値ごとに要素を取り出す。みたいなメソッド

p odd #pは配列ごと出力
puts odd #putsは要素を開業して出力
=end

array = [1,2,3,4,5,6,7,8]
odd = array.each_slice(2).map(&:first)
even = array.each_slice(2).map(&:last)

p odd
puts even