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