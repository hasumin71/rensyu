#xは高橋くんの現在の座標(xは-もあり得る)
#kは高橋くんが移動する回数
#Dは移動する値
#求めたい値はk回分移動した後にいる座標の絶対値が最小になるようにしたい
#絶対値が最小とは？
# frozen_string_literal: true

x, k, d = gets.chomp.split.map(&:to_i)
abso = x.abs
min = abso / d
if min >= k
  puts abso - k * d
elsif (k - min).odd?
  puts (min + 1) * d - abso
else
  puts abso % d
end


