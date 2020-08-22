#modは余を取得する演算
k = gets.chomp.to_i #kは倍数
i = 1 #初期値
a = 7 % k #7をkで割った余りがa
h = a 
if k != 7 #kが７ではない場合
  until a == 0 #aが０になるまで繰り返す
    a = (7 + a * 10) % k #
    if a == h || i == k #なぜi＝＝k？
      puts "-1" #倍数がない時は-1を返す
      exit 
    end 
    i += 1 
  end 
else 
  puts "1" #この1は何？
  exit
end
puts i 
