def input_n
  gets.to_i               # 単一整数
end
 
def input_s
  gets.chomp              # 文字列。chompを付けないと改行文字がついてくる
end
 
def input_a
  gets.split.map(&:to_i)  # スペースで区切られた複数の整数
end
 
def input_o(num)
  num.times.map { gets.to_i }  # 縦に並んだ複数の整数。たまにある
end
 
def output_f(num)
  puts sprintf("%.12f", num)
end
 
n, m, x = input_a
c = []
n.times do
  c.push(input_a)
end
 
# bit全探索
min = 10 ** 8
[0, 1].repeated_permutation(n) do |bits|
  # repeated_permutationで長さn(本の冊数)のbit列を作成(ex. n=3, [0, 0, 0], [0, 0, 1], [0, 1, 0], [0, 1, 1], ..., [1, 1, 1])
  # bit=1のとき購入とし、bit配列の値をindex付きで順次取り出し
  # アルゴリズムの個数m分の理解度を格納する配列performanceを用意
  cost = 0
  performances = Array.new(m, 0)
  # bitが立っている本を購入した場合の費用と習熟度を足していく
  bits.each_with_index do |buy, i|
    if buy == 1
      cost += c[i][0]
      c[i][1..m].each_with_index do |performance, j|
        performances[j] += performance
      end
    else
    end
  end
  # 習熟度がxを超えているか
  ok = 1
  performances.each do |performance|
    if performance < x
      ok = 0
    end
  end
  if ok == 1
    if min > cost
      min = cost
    end
  end
end
if min == 10 ** 8
  puts -1
else
  puts min
end