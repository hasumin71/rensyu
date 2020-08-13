require 'date'

def calendar_month(year,month) #()の仮引数はkeyとvalueの関係なのか？

  firstday = Date.new(year, month, 1) #結果 2020-05-01
  lastday = Date.new(year, month, -1) #結果 2020-05-31

  first_wday = firstday.wday #wdayは曜日を返します (0-6、日曜日は0)。#結果 5
  lastday_date = lastday.day #結果 31 その月の日数を出力
  
  days = (1..lastday_date).map{ |n| n.to_s.rjust(2)} #rjust(2)で半角スペース空ける
  days = Array.new(first_wday, ' ').push(days).flatten.each_slice(7).to_a #
  #結果 [[" ", " ", " ", " ", " ", " 1", " 2"], 
  #[" 3", " 4", " 5", " 6", " 7", " 8", " 9"], 
  #["10", "11", "12", "13", "14", "15", "16"], 
  #["17", "18", "19", "20", "21", "22", "23"], 
  #["24", "25", "26", "27", "28", "29", "30"], ["31"]
  puts %w[Sun|Mon|Tue|Wed|Thu|Fri|Sat].join(' ')

  days.each do |week|
    if week == days[0]
      days[0][0..4] = ["    ","    ","    ","    ","    "]
      puts days[0].insert(6," |").join
    else  
      puts week.join(' |')
    end  
  end
end

calendar_month(ARGV[0].to_i, ARGV[1].to_i)