def xyz_there(str)
  if str.include?(".xyz")
    puts false 
  elsif str.include?("xyz")
    puts true
  else
    puts false
  end
end

xyz_there("xyz.consa")
