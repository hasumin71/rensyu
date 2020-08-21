european = [0,32,15,19,4,21,2,25,17,34,6,27,13,36,
            11,30,8,23,10,5,24,16,33,1,20,14,31,9,
            22,18,29,7,28,12,35,3,26]
american = [0,28,9,26,30,11,7,20,32,17,5,22,34,15,
            3,24,36,13,1,00,27,10,25,29,12,8,19,31,
            18,6,21,33,16,4,23,35,14,2]
    
def sum_max(roulette, n) #rouletteが形式, nが回数
  ans = 0
  roulette.size.times{|i| #iは0から始まる
    tmp = 0
    if i + n <= roulette.size #連続するn個の最大値
      #配列の両端を跨がない場合
      tmp = roulette[i,n].inject(:+) #配列の中のi~n個分のインデックスの値を足す
    else  
      #配列の両端を跨ぐ場合(一周回った後の処理)
      tmp = roulette[0,(i + n) % roulette.size].inject(:+) #割られる数がちいさい時その数自体を返す 
      #跨いだ後のインデックス0から跨いだ分インデックスの値を足す
      tmp += roulette[i..-1].inject(:+)
      #インデックスiの値から配列の最後の値を足す
    end
    ans = [ans,tmp].max  #この配列の中の最大値が暫定一位だよ
  }
  ans 
end

cnt = 0
(2..36).each{|i|
  cnt += 1 if sum_max(european, i)< sum_max(american,i)
}

puts cnt 