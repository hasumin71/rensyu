n = gets.chomp.to_i
ary = gets.chomp.split("")
if ary.length > n
  puts ary.slice!(0..n-1).join + "..."
else
  puts ary.join
end