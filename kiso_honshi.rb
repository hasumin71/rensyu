=begin
def registration_student(students) #生徒を登録するためのメソッド  #引数はメソッドの外で配列を渡した変数
  # 生徒の名前と年齢を登録できるようにしなさい
  student = {} #からのハッシュを変数に渡す
  puts '生徒名を入力してください' #userに促す
  student[:name] = gets.chomp #受け取り受け取ったバリューをstudentのキーnameに代入
  puts '生徒の年齢を入力してください'
  student[:age] = gets.chomp  #受け取ったバリューをstudentのキーageに代入

  # 登録した生徒の国語、数学、英語の点数を登録できるようにしなさい
  puts "国語の得点は？"
  student[:japanese] = gets.to_i 
  puts "数学の得点は？"
  student[:math] = gets.to_i
  puts "英語の得点は？"
  student[:english] = gets.to_i
  puts students << student 

end

students = []


def show_student_name(students)
  # 登録された生徒の名前を番号を振って表示しなさい
  i = 0
  students.each do |student|
    puts "#{i}: #{student[:name]}"
    i += 1
  end
  puts '見たい生徒の番号を入力してください'
  num = gets.to_i

  student = students[num]
  # 選択された生徒の名前、年齢、国語、数学、英語の点数を表示できるようにしなさい
  puts "名前: #{student[:name]}"
  puts "年齢: #{student[:age]}"
  puts "国語: #{student[:japanese]}"
  puts "数学: #{student[:math]}"
  puts "英語: #{student[:english]}"
end

students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'
  input = gets.to_i
  puts input
  if input == 1
    registration_student(students)
  elsif input == 2
    show_student_name(students)
  elsif input == 3
    exit
  else
    puts '無効な値です'
  end
end

=end
student = []
hash = {age: 21,name:"abo",score:32}
hash2 = {age: 23,name:"kasi",score:2}
student << hash
student << hash2

p student[1]