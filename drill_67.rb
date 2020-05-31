#正の整数を入力します。その整数が、10の倍数（10,20,30...）からの差が
#2以内であるときはTrueそれ以外はFalseと出力するメソッドを作りましょう。
def difference2(integer10)
    zero = integer10%10
    if zero <= 2 || zero >= 8
      true 
    else 
      false 
    end
end

puts difference2(17)
