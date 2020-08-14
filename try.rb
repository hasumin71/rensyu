@memo = {}
def fib(n)
  
  if (n == 0) || (n == 1) 
    @memo[n] = 1
  else
    @memo[n] = fib(n - 1) + fib(n - 2)
  end
end

puts fib(6)
