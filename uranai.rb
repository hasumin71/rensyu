#ユーザーと血液型を取得
puts "あなたの名前を入力してください"
name = gets.chomp
puts "あなたの血液型を大文字で入力してください"
blood = gets.chomp
user_blood = {}
user_blood[name] = blood
  if blood == "A"
    puts "#{name}のラッキーカラーは黒です"
  elsif blood == "B"
    puts "#{name}のラッキーカラーは紫です"
  elsif blood == "O"
    puts "#{name}のラッキーカラーは#{name}の好きな色です"
  elsif blood == "AB"
    puts "#{name}のラッキーカラーは#{name}の好きな人のラッキーカラーです"
  else 
    exit
  end

=begin
num.times do 
    in_bloods = gets.chomp.split(" ")
    bloods[in_bloods[0]] = in_bloods[1]
end

num2 = gets.to_i
colors = {}

num2.times do 
    in_colors = gets.chomp.split(" ")
    colors[in_colors[0]] = in_colors[1]
end

users = bloods.keys
users.each do |user|
    blood = bloods[user] #valueを取得
    color = colors[blood]
    puts "#{user} #{color}"
end
    
=end
