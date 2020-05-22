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

#ある暗号化された文字列 S が与えられます。文字列 S のうち奇数文字目を取り出せば解読できることがわかりました。文字列 S が与えられるので奇数文字目の文字を取り出して解読した文字列を出力してください。
str = gets.chomp.split("")
odd = str.each_slice(2).map(&:first )

puts odd.join

#じゃんけん
n = gets.chomp.to_i
w_a = 0
w_b = 0

(1..n).each do 
    g_p_c = gets.chomp.split(" ")
    if g_p_c[0] == "g" && g_p_c[1] == "p" || g_p_c[0] == "p" && g_p_c[1] == "c" || g_p_c[0] == "c" && g_p_c[1] == "g" 
        w_b += 1
    elsif g_p_c[0] == "g" && g_p_c[1] == "g" || g_p_c[0] == "p" && g_p_c[1] == "p" || g_p_c[0] == "c" && g_p_c[1] == "c" 
        w_a += 0
        w_b += 0
    else
        w_a += 1
    end    
end

puts w_a
puts w_b

#正規表現その１ 文字列から数字のみ取得 gsubとは、正規表現のパターンいマッチした文字列を全て置き換えるメソッド
num = "abc12345def67890".gsub(/[^\d]/, "").to_i
num = "asava123123asdf".gsub(/[^\d]/, "").to_i

#文字を置換
str = gets
puts str.gsub(/A|E|G|I|O|S|Z|/,"A"=>"4","E"=>"3","G"=>"6","I"=>"1","O"=>"0","S"=>"5","Z"=>"2")
    
#エレベーター
num = gets.to_i

rope = 1 #初期値
w =1 
annum = [ ] #差分の合計

while num >= rope 
    a = gets.to_i 
    
    if w == 1
        af = a - 1
        rope += 1
        annum << af
        w = a
    else
        if w >= a
            af  = w -a
            rope += 1
            annum << af
            w = a
        else
            af = a - w
            rope += 1
            annum << af
            w = a
        end
    end
end

puts annum.sum

#アルファベッド探し(ordメソッド使用)
string = [] #からの配列をstringに入れる
3.times do #三回回す
  string.push(gets.chomp) #文字列をpushする(pushメソッドは配列の末尾に引数を要素として追加するメソッド)
end

puts string[0].ord <= string[2].ord && string[2].ord <= string[1].ord #(ordメソッドとは文字をその文字のコードポイントに変換するメソッド。)
#string[0]のコードポイントが[2]のポイントよりも上で、[2]が[1]よりも下であればtrue、条件がそれわなければfalse

#五目並べ
5.times do
  gets.chomp
end

#五目並べ2 #変数cntはcount
g = gets
 
if  g == "OOOOO" 
    puts "O"
elsif g == "XXXXX"
    puts "X"
else
    puts "D"
end

#見本
array = ['O', 'X'] #配列要素OXを変数arrayに代入
result = 'D' #勝者なしのDを変数resultに代入

(1..5).each do #1から5を回す
  string = gets.chomp.split('') #得た要素をスプリットしてstringに代入 #5回勝負する

  array.each do |a| #OXをaに代入して回す
    cnt = 0 #合計の初期値を０ #勝敗を確認するための変数が必要
    string.each do |s| #文字列をsに代入して回す #ここでいうストリングは五目並べのOXOXOなどの並びのこと
                        #そもそもeach文て文字一字ずつ回してるんじゃないの？
                        #eachの入れ子にeach文入れるとarray[0]を回した時にstring[s]が5回回るって認識でいいかい？
      if s == a  #sとaが同じなら #そこで
        cnt += 1 #１をcntにカウント
      end
    end
    if cnt >= 5 #arrayの一回分のOに対してstringの5回分すべて合致すれば #定義したインデントでその変数を使う
      result = a #結果がarray[0]か[1]になるということ
    end
  end
end

puts result #結果を出力

#五目並べ3 縦に５つ並べば勝ち
board = [] #配列をboadに渡す
result = 'D' #引き分けをDとして変数resultに渡す

# 盤面の初期化
(1..5).each do 
  board.push(gets.chomp.split('')) #boardの中に入力された文字列を分割して入れる。
end

#この時点で下記のようになっている
#[["X", "X", "O", "X", "O"], ["O", "X", "O", "X", "X"], ["O", "O", "O", "O", "O"], ["O", "X", "O", "X", "."], ["X", "O", "X", "X", "O"]]
# p board[0]とすると["X", "X", "O", "X", "O"]のように、一番最初の要素としての配列が出力される。
#ここまでで全行の文字列を一文字ずつ全て取得

(0..4).each do |i|  #?なぜ1..5じゃない #それと引数にiを渡しているのはなぜ？#boardの一文字を出力。
  o = 0  #oに初期値設定
  x = 0  #xに初期値設定
  board.each do |row| #ボードの要素を回す #二次元配列を使う時にはeachを二回回して取り出す。
    #入れ子にしてるのはboard[0] = ["X", "X", "O", "X", "O"]の[0] = Xを取得しようとしているため?次の[1] = ["O", "X", "O", "X", "X"]の[]
    if row[i] == 'O' #もしrowのiが oの場合
      o = o + 1  #oに一を追加する
    elsif row[i] == 'X' #xがi
      x = x + 1
    end
  end

  if o == 5
    result = 'O'
    break
  elsif x == 5
    result = 'X'
    break
  end
end

puts result

#補足
#transposeメソッドを使えば、二次元配列にあたるところの[1]を取得できる。
array = [
  [1,2,3],
  [1,2,3],
  [1,2,3]
]
array.transpose[0] # [1,1,1]
array.transpose[1] # [2,2,2]
array.transpose[2] # [3,3,3]