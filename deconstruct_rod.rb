def cutcar(m,n,current) #mは切り分けの最大の人数,nは棒の長さ(cm)#currentは現在の棒切れ
  if current >= n 
    0 #切り終えた
  elsif current < m 
    1 + cutbar(m,n,current*2) #次は現在の二倍になる
  else  
    1 + cutbar(m,n,current + m) #ハサミの数だけ追加
  end
end

puts cutbar(3,20,1)
puts cutbar(5,100,1)
