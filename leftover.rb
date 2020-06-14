#mが生鮮食品の重さ#pが売った量#pから売れた量q
m,p1,q = gets.chomp.split(" ").map(&:to_f) #小数点以下を計算してくれる

puts ((m - m*(p1/100))-(m - m*(p1/100))*(q/100)).round(4)
