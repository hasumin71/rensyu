#一行目tが滞在時間の間に流れてくる皿の数
#二行目ネタの種類

sushis = []
melons = 0
noweating = 0
dish = gets.chomp.to_i 

dish.times do 
  sushis << gets.chomp
end 

sushis.each do |s|
 if (s == "melon") && (noweating == 0) 
    melons += 1
    noweating = 10
 elsif noweating > 0 
    noweating -= 1
 end
end

puts  melons