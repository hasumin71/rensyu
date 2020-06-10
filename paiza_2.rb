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

#出社時刻を分に戻す。つまり9時であれば9x60=540に戻して、60(１時間)で割った数と余り(分)を分ける。
reala = ((resulta*60 + resultb) - abc)/60 
realb = ((resulta*60 + resultb) - abc)%60

if realb < 10 
    puts "0#{reala}:0#{realb}"
else 
    puts "0#{reala}:#{realb}"
end    


m,n,k = gets.split(" ").map(&:to_i) #mは候補者　nは有権者 kは演説回数
a = readlines.map(&:to_i)

#支持者が増えていく方法
#演説が終わるたびに「ほかのそれぞれの立候補者の支持者から一人ずつ」かつ「誰も支持しない有権者」から一人が支持する
#つまり残りの有権者を表す値と最終的に候補者が何人の有権者を持っているかの配列を作る必要がある。
r = []
m.times{r.push(0)} #r[0,0,0]#多分カウンターの役割
a.each do |i| # aはナンバーが振られた候補者の順番
#nが０になったらカウントしないということ#候補者がいなくなった使わない処理
    if n > 0 #nは0より上
        n -= 1 #
        r[i - 1] += 1 # r[]インデックスに合わせてマイナス一　つまり候補者の支持者をカウントするr[i-1]は数値ではなくインデックス番号
    end
    
    #例えばiが1の時つまり候補者のナンバーの時、#なんのためのeachなんだ
    #こっちは他のそれぞれの立候補者の支持者から一人ずつ支持する処理。#つまりどちらも支持者が0の時は実行されない処理。
    #0より上だから = 支持者がいるから、他の候補者が演説を行うたびに-1される。
    #つまり候補者の演説ごとにこの二つの処理が行われる可能性が潜在的に存在しているという意味
    r.count.times do |t| #rが1の時
        if r[t] > 0 
            r[t] -= 1
            r[i-1] += 1 
        end
    end
end

r.each_index do |t| #each_indexは要素を回すのではなくおそらく要素のインデックス番号を回すという意味
    if r[t] == r.max  #もしr[t]つまり支持者の結果がrの中の最大値と一致した値が正解でindexに1を足した値が候補者のナンバーになる
        puts t+1 
    end
end    
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

C079:カードを集める
N,M = gets.chomp.split(" ").map(&:to_i)
cards = [] #[1,2,3]種類が入る
M.times do |s|
    card = s+1
    cards << card
end
 style = readlines.map(&:to_i)
 style.each_with_index do |s, i|
     if cards.empty?
         puts i
         break
     else
         cards.delete(s)
         i +=1
     end
     
     if i == N 
         puts "unlucky"
     end         
 end