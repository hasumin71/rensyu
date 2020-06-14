line = gets.chomp.to_i
space = " "
a = "a"

line.times do |i|
  puts space*(line-i)+a*(i+1)
end   #SrtingクラスとIntegerクラスの四則演算子で挙動が異なる
