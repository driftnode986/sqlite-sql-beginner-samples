# 第7章　JOIN で表をつなぐ

書籍『はじめての SQLite で学ぶ SQL 入門』第7章のサンプルです。[トップのページに戻る](../README.md)

## この章でやること

- ①つながりを知る
- ②表をつなぐ
- ③つないで集計する
- ④相手の無い行も残す

## このページの使い方

この章の SQL はすべて本に載っています。本を見ながら、DB Browser for SQLite の「SQL実行」のタブに打って実行します。このページを開くのは、次のようなときです。

- **打ち間違いが見つからないとき** … 下の一覧でファイルの名前を押すと、SQL が表示されます。自分で打った SQL と見比べます
- **結果が本と同じか確かめたいとき** … 「結果の見本」を押します
- **打つかわりにコピーしたいとき** … ファイルの名前を押し、SQL の右上にあるコピーのボタンを押してから、「SQL実行」のタブに貼り付けます

SQL のファイルをダウンロードする必要はありません。結果の見本は、DB Browser for SQLite とは別のツール（sqlite3 コマンド）で実行したものです。罫線などの見た目は画面と違いますが、列と行の値は同じです。値が無い所（NULL）は、見本では空欄、画面では NULL と表示されます。エラーの見本は、メッセージの文面が画面と少し違うことがあります。

## 本の section と SQL のファイル

### section 02　INNER JOIN で2つの表をつなぐ

- [07-01-inner-join.sql](07-01-inner-join.sql)（[結果の見本](expected/07-01-inner-join.txt)）
- [07-02-alias.sql](07-02-alias.sql)（[結果の見本](expected/07-02-alias.txt)）
- [07-03-ambiguous.error.sql](07-03-ambiguous.error.sql) … エラーになる例（[エラーの見本](expected/07-03-ambiguous.error.txt)）
- [07-04-table-dot-column.sql](07-04-table-dot-column.sql)（[結果の見本](expected/07-04-table-dot-column.txt)）

### section 03　3つ以上の表をつなぐ

- [07-05-three-tables.sql](07-05-three-tables.sql)（[結果の見本](expected/07-05-three-tables.txt)）

### section 04　JOIN してから集計する

- [07-06-sales-by-product.sql](07-06-sales-by-product.sql)（[結果の見本](expected/07-06-sales-by-product.txt)）
- [07-07-top5-sales.sql](07-07-top5-sales.sql)（[結果の見本](expected/07-07-top5-sales.txt)）
- [07-08-sales-by-weekday.sql](07-08-sales-by-weekday.sql)（[結果の見本](expected/07-08-sales-by-weekday.txt)）

### section 05　LEFT JOIN で相手の無い行も残す

- [07-09-inner-sold.sql](07-09-inner-sold.sql)（[結果の見本](expected/07-09-inner-sold.txt)）
- [07-10-left-join.sql](07-10-left-join.sql)（[結果の見本](expected/07-10-left-join.txt)）
- [07-11-left-is-null.sql](07-11-left-is-null.sql)（[結果の見本](expected/07-11-left-is-null.txt)）
- [07-12-count-inner.sql](07-12-count-inner.sql)（[結果の見本](expected/07-12-count-inner.txt)）
- [07-13-count-left.sql](07-13-count-left.sql)（[結果の見本](expected/07-13-count-left.txt)）

### section 06　JOIN のつまずきを確かめる

- [07-14-one-to-many.sql](07-14-one-to-many.sql)（[結果の見本](expected/07-14-one-to-many.txt)）
- [07-15-double-count.sql](07-15-double-count.sql)（[結果の見本](expected/07-15-double-count.txt)）
- [07-16-forgot-on.sql](07-16-forgot-on.sql)（[結果の見本](expected/07-16-forgot-on.txt)）

### section 07　練習問題: 表をつないで答えを出す

- [07-17-practice-store-product.sql](07-17-practice-store-product.sql)（[結果の見本](expected/07-17-practice-store-product.txt)）
- [07-18-practice-never-ordered.sql](07-18-practice-never-ordered.sql)（[結果の見本](expected/07-18-practice-never-ordered.txt)）

`expected` のフォルダーには結果の見本が入っています。
