#整数部分を含む場合
i = 1
while i += 1
  str =('%10.10f'%Math.sqrt(i)).sub('.','')[0..9]
  break if str.split("").uniq.length == 10
end
puts i  

#少数部分のみの場合
i = 1
while i += 1
  str = ('%10.10f'Math.sqrt)