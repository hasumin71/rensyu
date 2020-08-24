k = gets.to_i 
a = 7
ans = 0
k.times do
  if a % k == 0
    ans = (i+1)
    break
  end
  a = (a * 10 + 7) % k
end
puts ans == 0 ? "-1" : ans
