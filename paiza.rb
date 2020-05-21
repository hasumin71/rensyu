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

array = gets.chomp.split(' ') #スペース区切りで値を取得 #補足: sliceは文字列データ splitは配列データ

(0..(array.size - 1)).each do |i| #配列[0]からarray配列の数を、変数iに渡して回す(配列は0から数えるためarrayの数から1引く)
  array[i] = array[i].to_i #arrayの順に回ってきた値を、整数に変えてarray[i]に渡す
end

puts array.sort #arrayを昇順で渡す。

#文字と整数の組のソート
num = gets.chomp.to_i #整数を受け取る
array = {} #ハッシュをarrayに代入,次に受け取る複数の要素をキーとバリューの関係で保管したいから。

(1..num).each do #一から受け取った数をeachで回す。
  line = gets.chomp.split(' ') #取得aaした値を半角スペース区切りで配列に入れる,変数に代入
  array[line[1].to_i] = line[0] #変数line[0]を[line[1].to_i]に代入
end

array = array.sort #ローマ字が持つ整数の値で昇順に並び替える

array.each do |ele| #配列を回す
  puts ele[1] #ローマ字のみ出力
end

#続き

num = gets.chomp.to_i
array = {}

(1..num).each do
    line = gets.chomp.split(" ")
    array[line[1].to_i] = line[0] #line[0]がarray[line[1]]のバリューになる
end

puts array  #出力結果がこうなる=>{1=>"A", 2=>"B"}

#重複の判定
# 解答例1
array = ['HND', 'NRT', 'KIX', 'NGO', 'NGO']

is_duplicate = false

array.size.times do |i|
    array.size.times do |j|
        if i != j and array[i] == array[j]
            is_duplicate = true
        end
    end
end

puts is_duplicate


# 解答例2
array = %w[HND NRT KIX NGO NGO] #%w空白区切りで配列を作成

puts array.size != array.uniq.size #uniqは配列の中で重複した要素を削除した配列を返す。

#配列の重複をカウント
array = ['HND', 'NRT', 'KIX', 'NGO', 'NGO', 'NGO', 'NGO', 'NGO'] #要素の入った配列をarrayに代入
count = {} #ハッシュをcountに代入

array.each do |element| #arrayをelementとして回す
  if count[element] 
    count[element] = count[element] + 1
  else
    count[element] = 1
  end
end

count.each do |_key, value|
  if value != 1
    puts value
  end
end

#ap昇順ソート出力 
gets.chomp # 1行目の入力は使わないので読み飛ばし
array = gets.split(' ')

(0..array.size - 1).each do |i|
  array[i] = array[i].to_i
end

puts array.sort

#アルファベッド全て出力p
string = gets.chomp

(string[0]..string[-1]).each do |c|
  puts c
end
#アルファベッドを数値で返す
str = gets.chomp.split("")

puts str[2].ord

#電波でデータ通信するプログラムが壊れてしまっており、あなたはそれを直そうとしています。
#n回の通信をしたとき、受信した各データ各電波強度 d_i が与えられます。各電波強度 d_i は 0 から 10 の整数で表され、 5 以下では通信に失敗します。
#n 回の通信のうち通信に成功した回数を出力してください。

n = gets.chomp.to_i
nums = gets.split(" ").map!(&:to_i)
ans = 0

(0..(nums.size - 1)).each do |i|
    if 5 < nums[i]
        ans += 1
    end
end

puts ans
