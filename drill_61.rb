def parrot_trouble(talking, hour)
  if (hour > 20 || hour < 7) && talking
    puts "NG"
  else 
    puts "OK"
  end
end

parrot_trouble(true, 6)