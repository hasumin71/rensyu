#今日の曜日を表示するコードを記述してください。ただし、金曜日だった場合だけ以下のように表示の内容を変えてください。
#（出力内容）
#「今日は月曜日」
#「今日は金曜日だ！！」
 
require "date" 
@week = %w(日 月 火 水 木 金 土)[Date.today.wday] #%w()で配列を作成

def is_friday 
  if @week == "金"
    puts "今日は金曜日だ！！"
  else 
    puts "今日は#{@week}曜日" 
  end
end

is_friday

#模範解答
require "date" #外部ファイルdateを取得する #requireは外部ファイルを取得するために使われるメソッド。 dateは日付に関わるライブラリです

day = Date.today.wday #DateはdateライブラリのDateクラス、Dateオブジェクトを取得するためにtodayメソッドを使う #todayメソッドは自動的に今日の日付を算出した上でDateオブジェクトを作成する。
#インスタンス作成後にwdayメソッドを使って、数値で返し変数dayに代入する
days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"] #配列に日本の曜日をはめる
if day == 5 
  puts "今日は#{days[day]}だ！！！" #daysという配列の中のday = 配列番号にある日本の曜日を取得する
else
  puts "今日は#{days[day]}"
end
