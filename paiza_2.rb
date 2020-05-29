#c問題
num = gets.chomp.to_i

user2blood = {}

(1..num).each do
  array = gets.chomp.split(' ')
  user2blood[array[0]] = array[1] #これでキーとハッシュの関係になる。
end

user2blood.each do |key, value|
  puts "#{key} #{value}"
end

#同様のキーの血液型を出力
user = gets.chomp #キーとなる値を取得
num = gets.chomp.to_i #入力される列を取得

user2blood = {} #からのハッシュを用意

(1..num).each do #
  array = gets.chomp.split(' ') #名前と血液型のセットを取得
  user2blood[array[0]] = array[1] #先にからのハッシュを用意した後で、変数[⓵取得した文字列の変数[0]] = ⓵[1] これでキーとバリューの関係になる
end

puts user + ' ' + user2blood[user] #ユーザー名と半角スペースと