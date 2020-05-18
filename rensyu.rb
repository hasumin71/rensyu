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