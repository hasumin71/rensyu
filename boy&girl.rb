#男性20人、女性10人が到着した場合、どこで区切っても二つのグループのいずれも
#男女の数が異なってしまうような到着順が何通りあるかを求めてください。
boy, girl = 20, 10 
boy, girl = boy + 1, girl + 1  #なぜ一足す？
ary = Array.new(boy * girl){0} #210の０が入った配列ができる{}は要素
ary[0] = 1  
girl.times{|g|
 boy.times{|b|
  if (b != g) && (boy - b ! = girl - g) then
    ary[b + boy * g] += ary[b -1 + boy * g] if b > 0 
    ary[b + boy * g] += ary[b + boy * (g - 1)]if g > 0
  end
  }
}
puts ary[-2] + ary[-boy -1]