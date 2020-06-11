#問題の意味は、自分が支払う金額に自分の嫌いな数字が入っていないように支払うには最小でいくら払わなければならないか？
n,k = gets.chomp.split(' ').map(&:to_i) #n = 買う予定の金額, k = 嫌いな数字の数
d = gets.chomp.split(' ').map(&:to_s) #d = 嫌いな数字
 
pay = n #
while true #while は指定した条件式がtrueの場合繰り返す
  chars = pay.to_s.chars #charsメソッドは文字列の各文字を配列で返す
  found = false
  chars.each do |s|
    if d.include?(s)
      found = true
      break
    end
  end
  break if not found
  pay += 1
end
 
puts pay