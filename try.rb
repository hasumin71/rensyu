# N, M, K = gets.chomp.split.map(&:to_i)
 
# AS = gets.chomp.split.map(&:to_i) #Aに積読されている各本の所要時間
# BS = gets.chomp.split.map(&:to_i) #Bに ””
 
# a_sum = [0]
# b_sum = [0]
# AS.each { |a| a_sum << a_sum[-1] + a } #一番後ろの要素に足していく
# #入力が60 90 120の場合=>[0, 60, 150, 270]
# BS.each { |b| b_sum << b_sum[-1] + b }
 
# b_index = BS.size

# puts b_index
# p b_sum

def janken(tarou,hanako)
  a = (tarou - hanako + 3)%3
  puts a==0? "あいこ" : a==1? "花子の勝ち" : "太郎の勝ち"
end
janken(ARGV[0].to_i,ARGV[1].to_i)


