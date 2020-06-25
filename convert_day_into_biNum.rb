#年月日を8桁の整数で表した時、これを二進数に変換して逆から並べ、さらに10進数に戻した時、元の日付と同じ日付になるものを探してください。
require "date"
term = Date.parse('19641010')..Date.parse('20200724')
term_list= term.map{|d|d.strftime('%Y%m%d').to_i} #strftimeメソッドは文字列を日付に変換する。'%Y%m%d'は多分年月日
puts term_list.select{|d|d==d.to_s(2).reverse.to_i(2)}#selectは条件似合うものだけを抽出するメソッド。

#to_s(2)は二進数の文字列を返し、to_i(2)は二進数の文字列を数値に変換している。

#上記の回答だと試行する回数が多くなる
#対象な二進数が今回の今回の期間に含まれる日付かを日付かを判定する

require "date"

from_left = 19641010.to_s(2)[4,8].to_i(2)
to_left = 20200724.to_s(2)[4,8].to_i(2)

from_left.upto(to_left{|i|
  l = "%08b" % i #0を8桁で穴埋めバイナリ文字列に変換し、iで割った余り。？
  r = l.reverse 
  (0..1).each{|m|
    value = "1001#{1}#{m}#{r}1001"
    begin 
      puts Date.parse(value.to_i(2).to_s).strftime('%Y%m%d')
      rescue
    end
    }
}