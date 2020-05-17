#配列の全ての数値の合計
array = [1, 3, 5, 6, 3, 2, 5, 23, 2]
puts array.sum
#anather
array = [1, 3, 5, 6, 3, 2, 5, 23, 2]
ans = 0

array.each do |e|
  ans += e
end

puts ans