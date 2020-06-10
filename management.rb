def main
  n = gets.to_i 
  as = gets.chomp.split(" ").map(&:to_i) #[1,1,2,2]各インデックスの社員の上司の番号を表示している。
  ans = [0] * (n+1) #[0,0,0,0,0,0]
  as.each do |i| #asを回して
    ans[i] += 1 #ans[i]iは１だからansのインデックス1が2になる 
  end
  ans.delete_at(0) #インデックス０を取り払う #最終的に頭を取り払って社員番号に合わせる為。
  puts ans
end

main