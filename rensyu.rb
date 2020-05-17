#配列の5以上の数の合計
array = [4, 0, 5, -1, 3, 10, 6, -8]
ans = 0

array.each do |element|
  if element >= 5
    ans += element
  end
end

puts ans