#サブクエリ
SELECT name AS "選手名", height AS "身長" #selectはどの項目を検索するか #nameはカラム #as別名をつけるとどのテーブルの項目なのか見やすくなる。
FROM players #FROM 使用テーブル
WHERE height > ( #取得した⓶よりも高いheightを持った選手名とその身長を取得する。
  #⓶playersテーブルのheightカラムの平均を取得
  SELECT AVG(height) #サブクエリ(SQL文の結果を使ったSQL文)
  FROM players
)
;
#joinの使い方 
SELECT * #全ての項目を検索する #⓶結合された後にセレクトが実行される。
#joinの実行順序 #①まずは最初にテーブルを結合する
FROM players 
JOIN countries #fromで指定したテーブル以外の紐付けしたいテーブルを指定。
ON players.country_id = countries.id #onは結合条件,「on テーブル名.外部キー = テーブル名.主キー」
WHERE countries.name = "日本" #whereでもテーブル名を指定することができる。
AND height >= 180 #andはwhereに複数の条件を指定することができる。
;