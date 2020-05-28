#B問題 五目並べ
puts "入力してください"
$board = []


# 盤面の初期化
(1..5).each do #1空を回す、timesでもいい
  $board.push(gets.chomp.split('')) #からの配列にpush=配列に取得した要素を突っ込むメソッド
end
#こうなると二次元配列になる #[["X", "X", "O", "X", "O"], ["O", "X", "O", "X", "X"], [".", "O", "X", "X", "O"], ["O", "X", "O", "O", "."], ["X", "X", "X", "X", "X"]]

#勝敗の付け方
def aligned?(o, x) #alignedは整列の意味,引数oxはどっからきたの？ メソッドの引数とはメソッド内の中で使う値
  if o == 5 #もしoが５であれば
    'O'     #Oを出力
  elsif x == 5 #xが5であれば
    'X' #Xを出力
  else
    'D'#Dを出力
  end
end

def row_aligned? #列は整列されているか？
  result = '' #結果に入れる

  $board.each do |row| #boardの時点で取得されている状態？
    o = 0 #oxの初期化
    x = 0 
    (0..4).each do |i| #0から4を回す。eachを入れ子にして二次元配列の要素を取得,
      if row[i] == 'O' #row=一次元の["X", "X", "O", "X", "O"]のi"X"がOならということ
        o = o + 1 #カウントする
      elsif row[i] == 'X' #
        x = x + 1
      else
        break #５が揃えばそこで終わりなのでbreakが必要
      end
    end

    result = aligned?(o, x) #結果メソッドを変数resultに代入
    if result != 'D' #resultがDでなければbreak? もう一度勝負するということ
      break #
    end
  end

  result
end

#縦を検証するときは先に数字をeachで回してからboardを回す。なぜそうするか？iが1の時boardのインデックス0の要素0を回すことになる。
def collum_aligned? #collum 斜め？ということ
  result = '' #文字列を変数に代入

  (0..4).each do |i|  #0から４をeachで回す
    o = 0 #
    x = 0 #
    $board.each do |row| #二次元配列を取り出す。ここさっきと一緒じゃない？
      if row[i] == 'O'
        o = o + 1
      elsif row[i] == 'X'
        x = x + 1
      end
    end

    result = aligned?(o, x) #結果メソッドを変数に代入する。
    if result != 'D' #よは勝ちが決まってれば終わり
      break
    end
  end

  result
end

#斜め処理
def oblique_aligned? 
  result = '' #縦横斜め全てにこの変数用意しなきゃいけないんだな

  (0..1).each do |time| #なぜ2回しか回さないかというと、斜めの勝敗は左と右の二つの対角線しかないから
    i = 0 #なんの初期値？

    if time.zero? #引数が0の時
      j = 0 #jは何を意味する？左の対角線
    else
      j = 4 #右の対角線
    end

    o = 0 #初期値 #急に初期値出してきた
    x = 0
    (1..5).each do #一から五を回す
      if $board[i][j] == 'O' 
        o = o + 1
      elsif $board[i][j] == 'X'
        x = x + 1
      end

      i = i + 1

      if time.zero? 
        j = j + 1 #引数が0の時はjに一を足す
      else
        j = j - 1 #引数が1の時はjから-1を引く
      end
    end

    result = aligned?(o, x) #結果メソッドを変数に代入する
    if result != 'D' #
      break
    end
  end

  result
end

if row_aligned? == 'O' || collum_aligned? == 'O' || oblique_aligned? == 'O' #もし横、縦、または斜めがOだったらOを出力
  puts 'O'
elsif row_aligned? == 'X' || collum_aligned? == 'X' || oblique_aligned? == 'X' #
  puts 'X'
else
  puts 'D'
end

=end