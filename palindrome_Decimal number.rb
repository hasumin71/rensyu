#10進数2進数8進数のいずれで表現しても回文数となるように10進数の10以上の最小値を答えてください
num = 11
while true
  if num.to_s == num.to_s.reverse &&
     num.to_s(8) == num.to_s(8).reverse &&
     num.to_s(2) == num.to_s(2).reverse 
    puts num 
    break
  end

#奇数だけ探すため,二つずつ増やす
  num += 2
end
#語尾が0は偶数ということを考えれば,先頭が0になる二進数ははそもそもないため回文にはならない。
#なのでnum =11からはじめて、プラス2をしていくことで奇数のみを調べることになる。

  