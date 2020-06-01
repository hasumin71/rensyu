sum_commuting = gets.chomp.split(" ").map(&:to_i)
num = gets.to_i
arrived_at = []
leave_time = [] 
num.times do  |i|
    p sum_commuting
     #到着時間
    leave_time.push(gets.to_i) #出発時間
    if  sum_commuting.sum >= 60   #合計値が60以上だった場合
        arrived_at = leave_time[0] + 1    #出発時間の"時”に一を足す
        min = sum_commuting.sum - 60   #移動時間の合計値に60を引いた値が"分"
        arrived_at = leave_time[1] + min     #変数minをleave_time[1]に足す
    end    
end 

