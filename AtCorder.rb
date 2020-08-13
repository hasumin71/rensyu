=begin
inp = gets.chomp
str = inp[/[a-z]/]
if str == nil #想定していた型が間違っていて、呼び出すべきメソッドがなかったことを意味する
  puts inp.to_i * 2
else 
  puts "error"
end

=end

