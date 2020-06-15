#文字列の真ん中を調べるメソッド
#もし文字列が偶数なら二文字を返す
#文字のレングスを調べて、例えば文字数が67なら33後ろから33までをsliceして、残った文字を出力する。

def center(string)
  num = string.length
  slicenum = num/2
  #指定範囲を取り出す
  if num.odd?
      puts string[slicenum]
  else    
      puts string[slicenum-1] + string[slicenum]
  end    
  
end    
center("かつあげしてほしくない")