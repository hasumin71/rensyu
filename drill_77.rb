#配列要素にある数値から偶数を数えて出力するメソッドを作りましょう。
def count_events(array)
  cnt = 0 #変数を扱う時は同じインデントもしくは入れ子の中でしか使用できない。
  array.each do |a|
    if a%2 == 0 #＝＝0をわすれないように！
    cnt += 1
    end
  end
  puts cnt 
end

count_events([2, 1, 2, 3, 4])

#模範解答
def count_evens(nums)
  count = 0
  nums.each do |num|
    if num.even? #evenメソッドは多分偶数を確認するめそっど,おそらく奇数はodd?
      count += 1
    end     
  end
  puts count
end