#大文字と小文字で構成されている文字列sの「a」の数と「b」の数を比べて同じだったらTrue、
#違ってたらFalseを返す関数です。

def mozi_ab(string)
  if string.count("a") == string.count("b")
      puts "True"
  else     
      puts "False"
  end
end

mozi_ab("adsfaabbba")