n,m = gets.split.map(&:to_i)
h = [0] + gets.split.map(&:to_i)
cnt =[0] + [1] * n

m.times do 
    a,b = gets.split.map(&:to_i)
    if h[a] < h[b]
        cnt[a] = 0
    elsif h[a] > h[b]
        cnt[b] = 0
    end
end

puts cnt.sum