pi = Math::PI #円周率
 
a, b, h, m = gets.split.map(&:to_i) #a=時針、b=分針,h＝時間,m=分
 
hd = 2 * pi / 12 * h + (2 * pi / 12 / 60 * m) #
md = 2 * pi / 60 * m
 
 
c2 = a * a + b * b - 2 * a * b * Math.cos(hd - md)
print Math.sqrt(c2)