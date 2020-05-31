#以下の配列から、数を探して何番目に含まれているか結果を返すメソッドを作成してください
	
input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
puts input.index(15) #indexメソッド #引数に指定した値が配列の何番目にあるか表示してくれるメソッド

#別解
def search(target_num, input)
  input.each_with_index do |num,index| #each_with_indexとは？
    if num == target_num
      puts "#{index + 1}番目にあります"
      return
    end  
  end
  puts "その数は含まれていません"
end

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
search(11, input)

#each_with_indexはeachメソッド同様要素を繰り返し処理を行うが、それと同時に要素が何番めに処理されたのかを表すことができるメソッド