N, M, K = gets.chomp.split.map(&:to_i)
 
AS = gets.chomp.split.map(&:to_i) #Aに積読されている各本の所要時間
BS = gets.chomp.split.map(&:to_i) #Bに ””
 
a_sum = [0]
b_sum = [0]
AS.each { |a| a_sum << a_sum[-1] + a } #一番後ろの要素に足していく
#入力が60 90 120の場合=>[0, 60, 150, 270]
BS.each { |b| b_sum << b_sum[-1] + b }
#入力が80 150 80 150 =>[0, 80, 230, 310, 460]
b_index = BS.size # => 4
 
ans = 0
 
a_sum.size.times do |a_index|
  break if a_sum[a_index] > K
  b_index -= 1 while a_sum[a_index] + b_sum[b_index] > K
  ans = [ans, a_index + b_index].max
end
 
puts ans