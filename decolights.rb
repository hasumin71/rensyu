#入力例１では
#一行目
#並木に並ぶ木の本数n !
#区間の電球の平均個数が上回らなければならない数を表す整数 M  !

#二行目
#それぞれの木に付いている電飾の数 decolight(現状)  !

#三行目以降~ 
#調査範囲の回数  ins !
#調査範囲 

#出力その範囲の電飾の平均が安全基準の個数に達していない場合+2それぞれの木に足す
#満たした場合クリアして出力はその時の各木の電飾の数

n,m = gets.chomp.split(" ").map(&:to_i)

decolights = gets.chomp.split(" ").map(&:to_i)

ins = gets.chomp.to_i 

#平均を出すためのaverageメソッド
class Array
    def average
    self.inject(:+) / self.length
    end
end

ins.times do  #調査の回数
    st,en = gets.chomp.split(" ").map(&:to_i)
    range = (en - st) + 1
    result = []
    range.times do |i|
        result << decolights[(i+st)-1]
    end
    if result.average < m 
       result.length.times do |i| #timesの場合最初は必ず０が来る#次は1来るから範囲分足してくれる。
           decolights[(i+st)-1] += (m - result.average)
       end 
    end    

end

#print最終行に改行がつかないやつ
puts decolights.join(" ")
    