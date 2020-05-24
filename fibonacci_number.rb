def fib(n)
  if n == 0 || n == 1
    return 1
  end
  fib(n - 2) + fib(n - 1)
end

puts fib(5)