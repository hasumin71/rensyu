=begin
#デフォルト値
def method1(num = 3)
  puts num
end


method1
method1(10)
#method1の引数に渡した数が出力,メソッド名出力の場合仮引数に渡した値が出力



#可変長変数(個数に制限をもたない)
def method2(*num)
  p num
end

method2(10, 20)
method2(1000, "aaa", 50)

=end

#キーワード引数
def method3(name:)
    puts name
end

method3(name: "yamada")