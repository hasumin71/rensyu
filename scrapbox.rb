#飛行機座席問題
#100人乗りの飛行機があり，乗客は100人いる搭乗券には席番号が書かれている最初に乗った客がチケットをなくしたので適当に座ることにした
#次の客は自分の席が空いていればそこに座る，埋まっていたら適当な席に座る．次も同じ...さて，最後の客が自分の席に座れる確率は?

ok = 0     # 自分の席に座れた場合
notok = 0  # 座れなかった場合
 
 10000.times { # 何回も試してみて結果を計算する
   a = (0...100).to_a.shuffle #0から100回を配列で返してshueffleする。
   seats = [] #空の配列を変数seatsに入れる。
 
   # ひとり目 勝手なとこに座る
   i = rand(100) #
   seats[i] = true
 
   # ふたり目から99人目まで
   (1..98).each { |i|
     if !seats[a[i]]            # 自分の席が空いてたら
       seats[a[i]] = true       # 普通に座る
     else                       # 誰かがすでにすわってたら
       while true               # 空いてる席を探す
         i = rand(100)
         unless seats[i]        # 空いてる席がみつかったので
           seats[i] = true      # そこに座る
           break                # プログラムを自分が中断させたいタイミングで終了させる。
         end
       end
     end
   }
   
   # 100人目の席は空いてるか?
   if seats[a[99]]              # 空いてなかった
     notok += 1
   else                         # 空いてた!
     ok += 1
   end
 }
 
 puts "自分の席に座れた=#{ok}, 座れなかった=#{notok}"