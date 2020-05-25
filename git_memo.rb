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
WHERE countries.name = "日本" #whereは~のカラムを持ったSELECTとイメージする
AND height >= 180 #andはwhereに複数の条件を指定することができる。
;

#joinの使い方⓶
SELECT countries.name AS "国名", AVG(goals) AS "平均得点"  #例えばAVG(goals)がgoalsのみはできない。
FROM players
JOIN countries #fromで指定したテーブル以外の紐付けしたいテーブルを指定。
ON players.country_id = countries.id #onは結合条件,「on テーブル名.外部キー = テーブル名.主キー」
GROUP BY countries.name; #国テーブルのnameカラムでグループ化するよ
#group byの注意点 グループバイを用いる場合,セレクトで指定できるのはグループバイで指定したカラム名と集計関数のみ。
 
#DISTINCT 重複レコードを除く際に使う
SELECT DISTINCT(name) 
FROM items;

#LIKE 
SELECT *
FROM items
WHERE name LIKE "%シャツ%"; #あいまい検索。サーチしたい単語の両端に%を付与、名前の一部に"シャツ"を含む文字を検索する。

#LIMIT
SELECT name, price - cost #nameと販売利益の全てのデータを取得
FROM items 
ORDER BY price - cost DESC #h販売利益を降順に並び替え
LIMIT 5; #上位五件まで表示