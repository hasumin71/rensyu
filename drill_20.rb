#以下のハッシュから値だけを取り出し、配列にしてください、ただ、hashクラスのvaluesメソッドは使用しないこと

=begin
values = []
attr.each do |key,value| #ハッシュattrのkeyとvalueを回して #なぜかvalueだけ回して、空の配列に回しても二次元配列になってしまう。なぜ？
  values << value #取り出したvalueをからの配列
end

p values #pは配列のまま返す
=end
attr = {name: "田中", age: 27, height: 180, weight: 75}

values = []

attr.each do |key, value|
  values << value 
end

p values