=begin
def fib(n)
  if n == 0 || n == 1
    return 1 
  end
  fib(n-2) + fib(n-1)   #これだと複数化fib(n)関数を呼び出していることになるので、桁が増えると計算が終わらなくなる
end  
=end
#つまり例えばfib(5)の時に,fib(3) + fib(4)をまず呼び出して、まずfib(4)の場合はfib(2)とfib(3)を呼び出し、
#fib(3)はfib(1)とfib(2)を呼び出すfib(2)はfib(0)とfib(1)を返し、fib(1)は1を返す、それでもう一つのfib(3)は
#とやっていくとかなり時間がかかる。なので一度計算したものは再度計算しなくてもいいように、空の配列に渡す(メモ化)

#フィボナッチ数列のn番目の値を出力する方法
def fib(n)
  f[0] = f[1] = 1
  if n >= 2
    (2..n).each do |i|
      f[i] = f[i-1] + f[i-2] 
    end
  end
   f[n]
end

puts fib(50)

#配列でフィボナッチ数列を出力する方法
def fib(n)
  n.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] } 
end
puts fib(10).join(" ")
#=> 0 1 1 2 3 5 8 13 21 34 55 89
#each_with_objectとは？ 
#numはfibの引数nのh変数、objは、メソッドで渡しているオブジェクトの変数
#obj[-2]とはobject([0,1])の０で[-1]は1の事、つまりnumが0の時は1,numが１の時は
#全てのデータはオブジェクトです。配列やHash、数字や文字列も、オブジェクトです。



