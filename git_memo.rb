#サブクエリ
SELECT name AS "選手名", height AS "身長" #selectはどの項目を検索するか #nameはカラム #as別名をつけるとどのテーブルの項目なのか見やすくなる。
FROM players #FROM 使用テーブル
WHERE height > ( #取得した⓶よりも高いheightを持った選手名とその身長を取得する。
  #⓶playersテーブルのheightカラムの平均を取得
  SELECT AVG(height) #サブクエリ(SQL文の結果を使ったSQL文)
  FROM players
)
;

