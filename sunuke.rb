#nはす抜け君の数 #kがお菓子の種類の数 #
N, K = gets.split.map(&:to_i)
cnt = [0]*N #す抜け君の人数をcntにかける
K.times do #お菓子の種類を回す
  d = gets.to_i #dがお菓子を持っている人の任ず
  a = gets.split.map(&:to_i) #aがお菓子を持っているすぬけくんのナンバー [1,3]
  a.each do |v| #お菓子を持っているすぬけ君を回す
    cnt[v-1] += 1 #cntのインデックス番号の値に一足す
  end
end
p cnt.select{|v| v==0}.size #