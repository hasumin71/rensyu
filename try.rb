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
  center("かつあげしてほしくない？")