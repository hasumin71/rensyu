def lone_sum(*ary)
  # 1. 配列から、重複する要素を取り出す
  un_uniqs = []
  ary.each_with_index do |n, i|
    cp_ary = ary.drop(i+1) 
    #最初のテストだと,
    #1回目2,3が取れる
    #2回目3が取れる
    #3回目何も取れない
    #2回目のテストだと、
    #1回目2,3が取れる
    #2回目3が取れる
    #3回目何も取れない
    cp_ary.each do |cn|
      un_uniqs << n if n == cn
      #1回目の時、un_uniqsに3が入る
      #2回目の時,
    end
  end
  # 2. 重複した要素をuniqする
  uniq_un_uniqs = un_uniqs.uniq
  # 3. 重複する数字と元の配列の数字を比較し、もし重複する数字でなければ足し合わせる
  ary.inject(0) {|n, item| uniq_un_uniqs.include?(item) ? n + 0 : n + item } #itemは
  #uni
end

puts lone_sum(1,2,3)
puts lone_sum(3,2,3)
puts lone_sum(3,3,3)

def lone_sum(*ary)
  un_uniqs = []
  ary.each_with_index do |n,i|
    ca_ary = ary.drop(i+1)
    ca_ary.each do |cn|
      un_uniqs << n if n == cn #よは一つ目と被っているものを探すために、一つ目はいらないと、
    end
  end
  
  uniq_un_uniqs = un_uniqs.uniq
  ary.inject(0) {|n,item| uniq_un_uniqs.include?(item) ? n + 0 : n + item }#{}の中のif文は成立する要素があれば~そうでない要素はseleみたいな解釈
end  

def lone_sum(*ary)
  un_uniqs = []
  ary.each_with_index do |n,i|
    ca_ary = ary.drop(i+1)
    ca_ary.each do |cn|
      un_uniqs << n if n == cn 
    end
  end
   
  uniq_un_uniqs = un_uniqs.uniq
  ary.inject(0) {|n,item| uniq_un_uniqs.include?(item) ? n + 0 : n + item }
end  