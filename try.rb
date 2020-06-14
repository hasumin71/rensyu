n,m = gets.chomp.split(" ").map(&:to_i)

decolights = gets.chomp.split(" ").map(&:to_i)

ins = gets.chomp.to_i 

#平均を出すためのaverageメソッド


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
    