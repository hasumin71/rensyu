#①三項演算子とはどのようなものか説明してください。
条件分岐を行うための演算子。条件式を判定し、trueだった時は「真の時の値」を、falseだった時は「偽の時の値」を返す。条件や返り値がシンプルな場合、if分よりも簡潔に記述できる。
#②以下の記述を、三項演算子を用いて書き換えてください。


#
def sanko
  $var.class == String ? "varはStringです" : "varはStringではありません"
end
puts "文字を入力してください"
$var = gets.chomp
puts sanko