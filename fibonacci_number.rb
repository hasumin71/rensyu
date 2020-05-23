=begin
def fib(n) #fibに引数nを渡して定義する
  if n == 1 || n == 2 #もしnが１、またはnが2の場合
      1  
  else
      a, b = 0, 1 
      n.times { a, b = b, a + b }
      a
  end
end

=end


def fib(x) #別解
  if x == 1 || x == 2
     1
  else
     fib(x-2) + fib(x-1)
  end
end

fib(50)