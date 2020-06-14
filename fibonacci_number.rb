#フィボナッチ数列について
n 番目のフィボナッチ数を Fn で表すと、Fn は再帰的に

F0 = 0,
F1 = 1,
Fn + 2 = Fn + Fn + 1 (n ≧ 0)
で定義される。これは、2つの初期条件を持つ漸化式である。

この数列 (Fn)はフィボナッチ数列（フィボナッチすうれつ、（英: Fibonacci sequence）と呼ばれ、

0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, と続く。最初の二項は 0, 1 であり、以後どの項もその直前の2つの項の和となっている。
=begin
def fib(n)
  if n == 0 || n == 1
    return 1
  end
  fib(n - 2) + fib(n - 1)
end

puts fib(5)
=end

#別解
#問題,1, 1, 2, 3, 5, 8, 13, 21 , 34, 55, 89, 144, 233, 377, 610,
#のように第n+2項が、 第n+1項と、第n項の和になるよう数列をプログラミングで書く

if n == 1 || n == 2