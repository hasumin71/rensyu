#3つの整数a b cが与えられた場合、bまたはcがaとの差が１でかつbとｃとの数値の差が2以上の場合はTrue。
#それ以外はFalseと出力するメソッドを作りましょう。

def abc(a,b,c)
  if (((b || c) == a + 1) || ((b || c) == a - 1)) && ((b - 2).abs >= c  || (b - 2).abs <= c)
    true
  else 
    false 
  end
end

puts abc(4,5,3)