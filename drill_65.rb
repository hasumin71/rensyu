#任意の文字列の最後の2文字を3回繰り返し
#出力するメソッドを作りましょう。

def extra_end(string)
  twice_st = string.slice(-2..-1)
  puts twice_st * 3
end  
extra_end('Hello') 
extra_end('ab') 
extra_end('Hi')

