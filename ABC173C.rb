#hは行数
#wは列数
#nは正の整数
h,w,k = gets.split.map(&:to_i)
c_c = h.times.map { gets.chomp!.chars }
 
ans = 0
(1 << h).times do |is| #1<<Hは２のH乗=4通りまで調べる => "0" "1" "10" "11"
  (1 << w).times do |js| 
    cnt = 0
    h.times do |i| #なぜまた繰り返す
      w.times do |j|
        next if is >> i & 1 == 1 #is(行が消されていたらnext)
        next if js >> j & 1 == 1 #js(列が消されていたらnext)
        cnt += 1 if c_c[i][j] == '#' #is,jsに消されていないところが"#"ならインクリメント
      end
    end
 
    ans += 1 if cnt == k
  end
end
 
puts ans