#配列の中に複数の数字を入れて9だけカウントし「配列の中には9が3個です」と出力させるメソッドを作りましょう。
def array_count9(nums)
  array = [1,9,2,3,9,3,9]
  puts array.count(nums)
end

array_count9(9)
