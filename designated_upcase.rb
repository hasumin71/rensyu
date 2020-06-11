a,b = gets.chomp.split(" ").map(&:to_i)
str = gets.chomp.split("")
newst = []

str.each_with_index do |s,i|
    if (i >= a-1) && (i <= b-1)
        newst << s.upcase
    else 
        newst << s
    end 
end 
puts newst.join          