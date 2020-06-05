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
abc = a+b+c
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

selection_1 = []
last_arrives.each do |la|
    if la[1] >= 60
      la[0] += 1 
      la[1] = la[1] - 60  
    end  
    if la[0] < 9 
        selection_1 << la
    end
end

result = selection_1.last

resulta = result[0]
resultb = result[1]

#出社時刻を分に戻す。
reala = ((resulta*60 + resultb) - abc)/60 
realb = ((resulta*60 + resultb) - abc)%60

if realb < 10 
    puts "0#{reala}:0#{realb}"
else 
    puts "0#{reala}:#{realb}"
end    


#M は立候補者の人数を、N は有権者の人数を、K は演説が行われる回数
m,n,k = gets.split(" ").map &:to_i

#番号を持つ候補者が演説を行った順番
a = readlines.map &:to_i #readlineにより一行ごとに取得する値を配列で取得
#立候補者の人数に応じて、支持者の人数を図れる配列を用意
r=[] #[0,0,0]になる
m.times {r.push(0)} #立候補者の人数分を回してからの配列rに0を入れる
#すべての演説が終わった後、最も支持者が多い立候補者の番号(複数ある場合は、すべて出力)
a.each do |i|
    #誰も支持していない人が、指示をする
    if n >0 #nは有権者の人数がゼロより上？ 
        n -= 1 #-1をひく #演説するたびに誰も支持していない有権者から一人が支持するから減る
        r[i-1] += 1 #立候補者のインデックス０番にカウント1する。
    end
    #他の人を支持している人が、支持をする
   
    r.times do |t| #カウントしていったrを回す
        if r[t] >0 #もしrのtが0より上であれば
            r[t] -= 1 #どうして-1するのかわからない
            r[i-1] += 1
        end
    end
end

#最大数を返す
r.each_index do |t|
    if r[t] == r.max
      puts t+1
    end
end
._
#自己流
#mが立候補者の人数
#nが有権者の人数
#kが演説が行われる回数
m,n,k = gets.chomp.split(" ").map(&:to_i)

#各立候補者を番号で配列に格納
candidates = []
(1..m).each do |m|
    candidates << m
end

#演説が行われる回数をeachで回して、取得した値と候補者の番号が一致すればカウントするみたいな
c_speech_log = {}
k.times do |k|
     in_candidate_i = gets.chomp.to_i
     candidates.each do |c|
         if c == in_candidates_i
             c_speech_log[c[0]] =  
end     

     
#配列の中の同じ値はカウントする
