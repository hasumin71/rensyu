#配列でフィボナッチ数列を出力する方法
def fib(n)
    n.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
  end
puts fib(10).join(" ")