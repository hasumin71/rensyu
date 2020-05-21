def text_to_number_binary(str) 
	one = 0
	zero = 0
	arr = [] 
	str.split(" ").count do |x|
		case x.downcase #downcaseは大文字を小文字に変える
			when "one"  
				one += 1 #変数1に位置を加える
				arr << 1 #1をarrに格納する
			when "zero" 
        zero += 1 #0の時はzeroに一を加える
				arr << 0 #0をarrに格納する
		end
	end
  if arr.count % 8 != 0 #arrを数えて 8で割って0じゃない時
		arr = arr[0..arr.count-(arr.count % 8)-1] #arr = arr
	end
	return "" if arr.join("").length < 8
	arr.join("")
end

 puts text_to_number_binary("zero one zero one zero one zero one") 

 #argumentは引数