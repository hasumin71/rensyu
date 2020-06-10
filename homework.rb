def homework 
  n,m = gets.split.map(&:to_i)
  hws = gets.split.map(&:to_i)

  result = n - hws.sum

  if result < 0
    puts -1 
  else 
    puts result 
  end
  
end

homework