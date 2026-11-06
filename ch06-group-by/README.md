# 第6章　GROUP BY で集計する

書籍『はじめての SQLite で学ぶ SQL 入門』第6章のサンプルです。[トップのページに戻る](../README.md)

## この章でやること

- ①表全体を数える
- ②分類ごとにまとめる
- ③集計した結果を絞る
- ④動く順番を知る

## このページの使い方

この章の SQL はすべて本に載っています。本を見ながら、DB Browser for SQLite の「SQL実行」のタブに打って実行します。このページを開くのは、次のようなときです。

- **打ち間違いが見つからないとき** … 下の一覧でファイルの名前を押すと、SQL が表示されます。自分で打った SQL と見比べます
- **結果が本と同じか確かめたいとき** … 「結果の見本」を押します
- **打つかわりにコピーしたいとき** … ファイルの名前を押し、SQL の右上にあるコピーのボタンを押してから、「SQL実行」のタブに貼り付けます

SQL のファイルをダウンロードする必要はありません。結果の見本は、DB Browser for SQLite とは別のツール（sqlite3 コマンド）で実行したものです。罫線などの見た目は画面と違いますが、列と行の値は同じです。値が無い所（NULL）は、見本では空欄、画面では NULL と表示されます。エラーの見本は、メッセージの文面が画面と少し違うことがあります。

## 本の section と SQL のファイル

### section 01　集計関数で表全体を数える

- [06-01-count-all.sql](06-01-count-all.sql)（[結果の見本](expected/06-01-count-all.txt)）
- [06-02-count-column.sql](06-02-count-column.sql)（[結果の見本](expected/06-02-count-column.txt)）
- [06-03-sum-avg-max-min.sql](06-03-sum-avg-max-min.sql)（[結果の見本](expected/06-03-sum-avg-max-min.txt)）
- [06-04-count-distinct.sql](06-04-count-distinct.sql)（[結果の見本](expected/06-04-count-distinct.txt)）

### section 02　GROUP BY で分類ごとにまとめる

- [06-05-group-by-category.sql](06-05-group-by-category.sql)（[結果の見本](expected/06-05-group-by-category.txt)）
- [06-06-group-by-aggregates.sql](06-06-group-by-aggregates.sql)（[結果の見本](expected/06-06-group-by-aggregates.txt)）

### section 03　商品ごと・月ごと・店ごとにまとめる

- [06-07-sold-by-product.sql](06-07-sold-by-product.sql)（[結果の見本](expected/06-07-sold-by-product.txt)）
- [06-08-orders-by-month.sql](06-08-orders-by-month.sql)（[結果の見本](expected/06-08-orders-by-month.txt)）
- [06-09-store-and-month.sql](06-09-store-and-month.sql)（[結果の見本](expected/06-09-store-and-month.txt)）

### section 04　HAVING で集計した結果を絞る

- [06-10-having.sql](06-10-having.sql)（[結果の見本](expected/06-10-having.txt)）
- [06-11-where-and-having.sql](06-11-where-and-having.sql)（[結果の見本](expected/06-11-where-and-having.txt)）
- [06-12-top5.sql](06-12-top5.sql)（[結果の見本](expected/06-12-top5.txt)）
- [06-13-round-avg.sql](06-13-round-avg.sql)（[結果の見本](expected/06-13-round-avg.txt)）

### section 05　SQL が動く順番を知る

- [06-14-alias-in-where.error.sql](06-14-alias-in-where.error.sql) … エラーになる例（[エラーの見本](expected/06-14-alias-in-where.error.txt)）
- [06-15-bare-column.sql](06-15-bare-column.sql)（[結果の見本](expected/06-15-bare-column.txt)）

### section 06　集計のつまずき

- [06-16-duplicate-count.sql](06-16-duplicate-count.sql)（[結果の見本](expected/06-16-duplicate-count.txt)）
- [06-17-null-in-avg.sql](06-17-null-in-avg.sql)（[結果の見本](expected/06-17-null-in-avg.txt)）

### section 07　練習問題: 店ごと・月ごとの注文の表を作る

- [06-18-practice.sql](06-18-practice.sql)（[結果の見本](expected/06-18-practice.txt)）

`expected` のフォルダーには結果の見本が入っています。
