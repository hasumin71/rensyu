#以下のコードをワンライナーに書き換える方法について、２パターン以上のコードを記述してください。
=begin

rescue => exception
  
end
array = [1, 2, 3, 4, 5].map do |el| #mapは配列の要素の数だけブロック内の処理を繰り返し、結果として作成された配列を返します。
  if el.odd? #odd?メソッドは要素が奇数だったらというメソッド
   p el 
  end
end #コンパクトメソッドは、配列中に空の要素があれば、それを除外した配列を返却します。


array = [1,2,3,4,5].map{|el| el if el.odd?}.compact! #ブロックの処理を順に言語化すると、|el|と変数を渡して、結果がel、条件として変数elが奇数であれば.. 
#compact!はtrue以外の要素を排除した配列を返却する。
p array

array = (1..5).to_a.delete_if { |el| el.even? } #1..5を.to_aで配列として返し、delete_ifで{ブロック内の処理をもとに配列の要素を削除する}
#この場合、elを変数でわたし、elが偶数であればその要素を削除した配列を返却するという感じ。

array = (1..5).to_a.delete_if(&:even?)#&はメソッドにこれはブロック引数ですと伝える効果があります。
p array
=end
array = [1, 2, 3, 4, 5].select{ |el| el.odd?} #selectメソッドは各要素をブロックで評価しturueとなる要素だけを抽出して返すものです。
#selectメソッドを使えば条件を指定して、配列から条件で絞った新しい配列を作成できます。元の配列(レシーバー)変更するものではない