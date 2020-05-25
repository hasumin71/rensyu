#1,2,3が全て配列内に入っていれば「True」それ以外は「False」と出力されるメソッドを作りましょう。
def array123(nums)
  if nums.include?(1) && nums.include?(2) && nums.include?(3) 
    puts "True"
  else 
    puts "False"
  end    
end

array123([1,2,3,4,5,6])