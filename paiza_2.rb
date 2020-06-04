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
  user2blood[array[0]] = array[1] #先にからのハッシュを用意した上で、変数[⓵取得した文字列の変数[0]] = ⓵[1] これでキーとバリューの関係になる
end

puts user + ' ' + user2blood[user] #ユーザー名と半角スペースと

#血液型に対応する占い結果を出力
blood_type = gets.chomp #血液型を取得
fortunes = {} #からのハッシュを用意

while tmp = gets do #一時的に数値などを保管しておくための変数(temporary)
  tmp = tmp.chomp.split(" ") #whileでは指定した条件がtrueである間ループします。血液型と占い結果を取得
  fortunes[tmp[0]] = tmp[1] #配列を空のハッシュに入れることで,キーとバリューの関係を作る。
end

puts fortunes[blood_type] 

#占い
user = gets.chomp
num =gets.to_i
users_blood = {}

num.times do
    in_users_blood = gets.chomp.split(" ")
    users_blood[in_users_blood[0]] = in_users_blood[1]
end

num2 = gets.to_i 
lucky_color = {}

num2.times do 
    in_lucky_color = gets.chomp.split(" ")
    lucky_color[in_lucky_color[0]] = in_lucky_color[1]
end

true_blood = users_blood[user]
puts lucky_color[true_blood]

#ハッシュオブジェクトからキー、バリューを取り出す方法
オブジェクト.keys オブジェクト.values
#zipメソッド 二つの配列を同時に回したいときに使うメソッド

#占いもんだい
user     = gets.chomp 
users    = {}
fortunes = {}

(1..gets.chomp.to_i).each do
  tmp = gets.chomp.split(' ')
  users[tmp[0]] = tmp[1]
end

(1..gets.chomp.to_i).each do
  tmp = gets.chomp.split(' ') 
  fortunes[tmp[0]] = tmp[1] 
end

puts fortunes[users[user]]

#占い_ラスト問題
n = gets.chomp.to_i #n行の数値取得 
user2blood = {} #からのハッシュを変数に渡す
(1..n).each do #回す
  user, blood = gets.chomp.split(' ') #取得して二つの変数に渡す。
  user2blood[user] = blood #血液型をuserの値とする
end

m = gets.chomp.to_i #n行の数値取得
blood2result = {} #結果(ラッキーカラーとか)
(1..m).each do #回す
  blood, result = gets.chomp.split(' ') #血液と結果を取得
  blood2result[blood] = result #resultはbloodの値とする
end

users = user2blood.keys #user名を全て取得
users.each do |user| #userを回す #発端を知ることが大切
  blood = user2blood[user] #user2bloodのuser（値である血液型を取得）を変数bloodに代入
  result = blood2result[blood] #blood2result[blood]の値をresultに代入
  puts "#{user} #{result}"
end

#自分流
#ユーザーと血液型を取得
num = gets.to_i
bloods = {}

num.times do 
    in_bloods = gets.chomp.split(" ")
    bloods[in_bloods[0]] = in_bloods[1]
end

num2 = gets.to_i
colors = {}

num2.times do 
    in_colors = gets.chomp.split(" ")
    colors[in_colors[0]] = in_colors[1]
end

users = bloods.keys
users.each do |user|
    blood = bloods[user] #valueを取得
    color = colors[blood]
    puts "#{user} #{color}"
end

#英単語複数系
num = gets.chomp.to_i

num.times do 
    $word = gets.chomp
    if $word.index("s",-1) || $word.index("sh",-2) || $word.index("ch",-2) || $word.index("o",-1) || $word.index("x",-1)
        puts $word + "es"
    elsif $word.index("f",-1) 
        $word.chop!
        puts $word + "ves"
    elsif $word.index("fe",-2)
        $word.slice!(-2..-1)
        puts $word + "ves"
    elsif $word.end_with?("y") && ($word.slice(-2) != ("a"||"i"||"u"||"e"||"o"))
        $word.chop!
        puts $word + "ies"
    else
        puts $word + "s"
    end    
end
  

#最遅出社時間
a,b,c = gets.chomp.split(" ").map(&:to_i) 
bc = b + c #bc区間の通勤時間の合計
minute = bc
hour = 0
if bc >= 60
    hour += 1
    minute = bc - 60 
end

num = gets.to_i
pa_leaves = [] #paiza駅の電車の出発時間
num.times do |i|
    leaves = gets.chomp.split(" ").map(&:to_i)
    pa_leaves << leaves
end
last_arrives = [] #出社時間
pa_leaves.each do |pa| #二次元配列の要素を取得
  last_arrive = pa[0] + hour, pa[1] + minute
  last_arrives << last_arrive
end

p last_arrives

    
    


    
    