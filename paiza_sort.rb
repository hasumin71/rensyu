#文字と整数の組のソート2
#問題
#1行目に行数を表す整数 n、続く n 行の各行で「文字」と「整数」の組が空白区切りで入力されます。
#n個の組について、「文字」の値が同じ組同士の数値を足しわせてまとめ、まとめた数値の降順で、文字とまとめた数値の組を出力してください。
num = gets.chomp.to_i #行数を取得
array = {} #からのハッシュをarrayに代入

(1..num).each do #1から取得した行数を回す
  values = gets.split(' ')  #文字と整数を空白区切りで取得
  string = values[0]  #valueの0は文字列
  points = values[1].to_i #value1を整数にしてpointsに代入

  if array[string]   #arrayが文字列なら
    current = array[string] #文字列を現在に代入
    array[string] = current + points  #現在(文字列)とpoints(整数)を足して配列に代入
  else
    array[string] = points  #pointsをarray[string]に代入
  end
end

array = array.sort_by { |_string, points| -points } #配列を小さい順に並べたい時sort_byを使うcagec


array.each do |string, points|
  puts "#{string} #{points}"
end

