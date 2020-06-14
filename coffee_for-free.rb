#xがコーヒーの価格#pが次のお買い上げのコーヒーの割引率

x, dis = gets.chomp.split(" ").map(&:to_f)
sumprice = []
sumprice.push(x)

while x > 0 
      x = (x*((100-dis)/100)).floor
      sumprice.push(x)
end
 
puts sumprice.sum.to_i