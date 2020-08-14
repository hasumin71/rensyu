#03
# @memo = {}
# def fib(n)
#   return @memo[n] if @memo.has_key?(n)
#   if (n == 0) || (n == 1)
#     @memo[n] = 1
#   else 
#     @memo[n] = fib(n-1) + fib(n-2)
#   end
# end

#04
a = b = 1
count = 0
while(count<11) do
  c = a+b
  sum = 0
  c.to_s.split("").each { |e| sum += e.to_i}
  if(c % sum == 0) then
    puts c 
    count += 1
  end
a, b = b, c
end

 
