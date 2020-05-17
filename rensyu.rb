#改行区切りで正の整数がn個入力されるので、n個の整数のうち、5以上のものを全て足し合わせた値を出力してください。
loop = gets.chomp.to_i
ans = 0

(1..loop).each do
    n = gets.chomp.to_i
    if n >= 5
        ans += n
    end    
end

puts ans 
    