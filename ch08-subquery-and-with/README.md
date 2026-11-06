# 第8章　サブクエリと WITH で、問いを分けて書く

書籍『はじめての SQLite で学ぶ SQL 入門』第8章のサンプルです。[トップのページに戻る](../README.md)

## この章でやること

- ①問いを分ける
- ②あるか無いかで絞る
- ③集計した結果を使う
- ④前の月と並べる

## このページの使い方

この章の SQL はすべて本に載っています。本を見ながら、DB Browser for SQLite の「SQL実行」のタブに打って実行します。このページを開くのは、次のようなときです。

- **打ち間違いが見つからないとき** … 下の一覧でファイルの名前を押すと、SQL が表示されます。自分で打った SQL と見比べます
- **結果が本と同じか確かめたいとき** … 「結果の見本」を押します
- **打つかわりにコピーしたいとき** … ファイルの名前を押し、SQL の右上にあるコピーのボタンを押してから、「SQL実行」のタブに貼り付けます

SQL のファイルをダウンロードする必要はありません。結果の見本は、DB Browser for SQLite とは別のツール（sqlite3 コマンド）で実行したものです。罫線などの見た目は画面と違いますが、列と行の値は同じです。値が無い所（NULL）は、見本では空欄、画面では NULL と表示されます。エラーの見本は、メッセージの文面が画面と少し違うことがあります。

## 本の section と SQL のファイル

### section 01　大きな問いを小さな問いに分ける

- [08-01-avg-price.sql](08-01-avg-price.sql)（[結果の見本](expected/08-01-avg-price.txt)）
- [08-02-above-avg-price.sql](08-02-above-avg-price.sql)（[結果の見本](expected/08-02-above-avg-price.txt)）

### section 02　あるか無いかで行を絞る

- [08-03-in-ordered.sql](08-03-in-ordered.sql)（[結果の見本](expected/08-03-in-ordered.txt)）
- [08-04-not-in.sql](08-04-not-in.sql)（[結果の見本](expected/08-04-not-in.txt)）
- [08-05-not-in-null.sql](08-05-not-in-null.sql)（[結果の見本](expected/08-05-not-in-null.txt)）
- [08-06-not-in-not-null.sql](08-06-not-in-not-null.sql)（[結果の見本](expected/08-06-not-in-not-null.txt)）
- [08-07-exists.sql](08-07-exists.sql)（[結果の見本](expected/08-07-exists.txt)）

### section 03　集計した結果をもう一度使う

- [08-08-from-subquery.sql](08-08-from-subquery.sql)（[結果の見本](expected/08-08-from-subquery.txt)）
- [08-09-with.sql](08-09-with.sql)（[結果の見本](expected/08-09-with.txt)）
- [08-10-with-two.sql](08-10-with-two.sql)（[結果の見本](expected/08-10-with-two.txt)）

### section 04　同じ問いを3通りで書いて比べる

- [08-11-compare-subquery.sql](08-11-compare-subquery.sql)（[結果の見本](expected/08-11-compare-subquery.txt)）
- [08-12-compare-with.sql](08-12-compare-with.sql)（[結果の見本](expected/08-12-compare-with.txt)）
- [08-13-compare-join.sql](08-13-compare-join.sql)（[結果の見本](expected/08-13-compare-join.txt)）

### section 05　月ごとの売上を前の月と並べる

- [08-14-month-vs-prev.sql](08-14-month-vs-prev.sql)（[結果の見本](expected/08-14-month-vs-prev.txt)）

### section 06　サブクエリのつまずきを確かめる

- [08-15-many-rows.sql](08-15-many-rows.sql)（[結果の見本](expected/08-15-many-rows.txt)）
- [08-16-many-rows-in.sql](08-16-many-rows-in.sql)（[結果の見本](expected/08-16-many-rows-in.txt)）
- [08-17-two-columns.error.sql](08-17-two-columns.error.sql) … エラーになる例（[エラーの見本](expected/08-17-two-columns.error.txt)）
- [08-18-paren.error.sql](08-18-paren.error.sql) … エラーになる例（[エラーの見本](expected/08-18-paren.error.txt)）

### section 07　練習問題: 問いを分けて答えを出す

- [08-19-practice-above-avg-day.sql](08-19-practice-above-avg-day.sql)（[結果の見本](expected/08-19-practice-above-avg-day.txt)）
- [08-20-practice-never-not-in.sql](08-20-practice-never-not-in.sql)（[結果の見本](expected/08-20-practice-never-not-in.txt)）
- [08-21-practice-never-not-exists.sql](08-21-practice-never-not-exists.sql)（[結果の見本](expected/08-21-practice-never-not-exists.txt)）
- [08-22-practice-never-left-join.sql](08-22-practice-never-left-join.sql)（[結果の見本](expected/08-22-practice-never-left-join.txt)）

`expected` のフォルダーには結果の見本が入っています。
