#文字の重複カウント
query = gets.chomp
source = gets.chomp

puts source.count(query)

#文字列の n 文字目と n + 1 文字目
n = gets.chomp.to_i
s = gets.chomp

puts s[n-1]+" "+s[n] if s[n] 

#文字列の重複カウント
pattern = gets.chomp #次に取得する文字列の重複部分を取得
string = gets.chomp #テストされる文字列を取得

result = 0  #結果の初期値設定
(0..(string.size - pattern.size)).each do |i| #string.size - pattern.sizeの意味=>一回分のパターンを消して回す
  substring = string.slice(i, pattern.size) #文字列のなかから、i+１からpattern.size(2)までを取得して変数substring(重複部分)に代入

  if substring == pattern #例えばsubstring(er)とpattern(aa)は重複してないので=>
    result += 1 #=>結果にカウントされない
  end
end
s
puts result #重複した回数をアウトプット

#数字のみの出力
num = gets.chomp.to_i #数値を取得

num.times do #指定回数だけ繰り返し処理を行う
  puts gets.chomp.split(' ')[1] #半角スペースで複数の値を取得して、配列1をアウトプット
end

#昇順ソート出力
gets.chomp.to_i # 行数の入力を受け取るが使用しないため変数に代入しない

array = gets.chomp.split(' ') #スペース区切りで値を取得

(0..(array.size - 1)).each do |i| #配列[0]からarray配列の数を、変数iに渡して回す
  array[i] = array[i].to_i #arrayの順に回ってきた値を、整数に変えてarray[i]に渡す
end

puts array.sort #arrayを昇順で渡す。