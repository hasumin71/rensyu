y = gets.to_i  #入力された金額がなん年後になるか
x = 100 #初期値
i = 0 #year
loop do #これは終了条件のない繰り返しのためのメソッドです。
  #無限ループになってしまうので、繰り返しを抜けるには break 文を使う必要があります。
  x = x*1.01
  x = x.to_i
  i+=1
  if x >= y then
    puts(i)
    break
  end
end