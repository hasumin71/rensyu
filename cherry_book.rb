=begin
#ヒアドキュメント(識別子は自由につけられる)
a = <<TEXT 
完全なるドキュメント
だって楽しいことしたんだもん
TEXT

puts a


puts sprintf("%0.3f",1.2)
#結果 1.200



puts sprintf("%0.3f + %0.3f",1.2,0.48)


puts "%0.3f + %0.3f"%[1.2,0.48]


puts [4,34,34].join
=end
puts 2e-3
#0.02
#2x10 -3乗