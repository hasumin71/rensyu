#コラッツの予想
#10000以下の偶数のうち、、最初の数に戻る数がいくつあるかその個数を求めなさい。
def is_loop(n)
  check = n*3 + 1
  while check != 1 do
    check = check.even? ? check/2 : check*3 + 1 #後半の?はif文の?最初のeven?はメソッド
    return true if check == n
  end
  return false 
end

puts 2.step(10000,2).count{ |i| #stepメソッドはオブジェクトに対して指定した回数だけ繰り返し処理をおこうなうメソッド
  is_loop(i)
}
