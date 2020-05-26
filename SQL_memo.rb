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

SELECT item_id, COUNT(*)
FROM sales_records
GROUP BY item_id
ORDER BY COUNT(*) DESC #グループ倍を使用する時は、欲しいデータが単一データだけでなく、複数のデータを集計した計算結果も含まれていることです。
LIMIT 5;

#売れた数が多い上位5位の商品の、
#・商品のID
#・商品の名前
#・売れた数
#を取得してください。
#ただし、売れた数が多い順番に取得結果を並び替えてください。
SELECT items.id,items.name, COUNT(*) #items.id と items.name, count(*)
FROM sales_records #
JOIN items 
ON sales_records.item_id = items.id
GROUP BY items.id, items.name 
ORDER BY COUNT(*) DESC
LIMIT 5;

SELECT SUM(items.price) AS "総売上", SUM(items.price - items.cost) AS "総利益"
FROM sales_records
JOIN items #なぜjoinnの必要？ アイテムの価格はitemsテーブルのみ表示されていて、売り上げはsales_recordsに文字通り記録されているため、求めているものは総売り上げで
ON sales_records.item_id = items.id; #onは結合条件,だいたい主キーと外部キーをイコールでつなぐ

#SQL_I 9
SELECT users.id, users.name, count(*) AS "購入数"
FROM sales_records #
JOIN users
ON sales_records.user_id = users.id
GROUP BY users.id, users.name
HAVING count(*) >= 10;

