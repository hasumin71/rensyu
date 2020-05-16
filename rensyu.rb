#入館料の計算
n = gets.chomp.to_i
m,a,b = gets.split(' ').map(&:to_i)

if n < m 
    puts n * b
else
    puts n * a
end    