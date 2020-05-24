#シーザー番号と呼ばれる暗号があります。これはアルファベッドをある文字数分ずらすという暗号形式で、例えば「a」を二文字分ずらす(進める)とcになります。
#「frqjudwxodwlrq」という文字列があり、これを３文字ずらす（戻す）と復号できることがわかっています。それを実現させるコードを記述してください。
=begin
char = "frqjudwxodwlrq" #変数charは文字集合を意味するcharsetの略
char_ary = char.split("") #charを一文字ずつ分解して配列に渡す。

changed_char_ary = [] #空の配列を変数に渡す。なぜからの配列を用意する必要があるのか？配列を組み直した際にからの配列が必要

char_ary.each do |char| #char_aryをcharとしてeachで回す
  changed_char_ary << (char.ord - 3).chr #ordメソッドは文字をその文字のコードポイントに変換するメソッド 
end

p changed_char_ary.join #joinは各要素を一つの文字列につなげるメソッド
=end
#アルファベッドを~文字先に進める/戻すような問題はordメソッド(数値変換)、chrメソッド(文字変換)を使う

char = "frqjudwxodwlrq"
char_arry = char.split("")
changed_char_arry = []

char_arry.each do |char|
  changed_char_arry << (char.ord - 3).chr
end

puts changed_char_arry.join