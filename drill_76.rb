puts "文字を入力してください"
@mozi = gets.chomp

def count_hi(str)
  @mozi.scan(str).length
end

puts count_hi("hi")

#別解
def count_hi(str)
  puts str.scan("hi").length
end

 #scanとcountの違い
 string = "ある道を通り過ぎた道端さんと道端さん"
puts string.count("道端")#このようにcountメソッドを使用すると、 "道"と"端"が含まれている文字を全てcountします。
#result => 5
#なので、"道端"さんだけを取り出したいときは、scanメソッドで文字を指定し、指定した文字がいくつ含まれているかをlengthメソッドでカウントします。
