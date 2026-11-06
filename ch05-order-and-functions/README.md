# 第5章　並べ替えと関数で結果を整える

書籍『はじめての SQLite で学ぶ SQL 入門』第5章のサンプルです。[トップのページに戻る](../README.md)

## この章でやること

- ①行を並べ替える
- ②数と文字列を整える
- ③日付から取得する
- ④値を言い換える

## このページの使い方

この章の SQL はすべて本に載っています。本を見ながら、DB Browser for SQLite の「SQL実行」のタブに打って実行します。このページを開くのは、次のようなときです。

- **打ち間違いが見つからないとき** … 下の一覧でファイルの名前を押すと、SQL が表示されます。自分で打った SQL と見比べます
- **結果が本と同じか確かめたいとき** … 「結果の見本」を押します
- **打つかわりにコピーしたいとき** … ファイルの名前を押し、SQL の右上にあるコピーのボタンを押してから、「SQL実行」のタブに貼り付けます

SQL のファイルをダウンロードする必要はありません。結果の見本は、DB Browser for SQLite とは別のツール（sqlite3 コマンド）で実行したものです。罫線などの見た目は画面と違いますが、列と行の値は同じです。値が無い所（NULL）は、見本では空欄、画面では NULL と表示されます。エラーの見本は、メッセージの文面が画面と少し違うことがあります。

## 本の section と SQL のファイル

### section 01　ORDER BY で行を並べ替える

- [05-01-order-by.sql](05-01-order-by.sql)（[結果の見本](expected/05-01-order-by.txt)）
- [05-02-order-by-desc.sql](05-02-order-by-desc.sql)（[結果の見本](expected/05-02-order-by-desc.txt)）
- [05-03-order-by-two.sql](05-03-order-by-two.sql)（[結果の見本](expected/05-03-order-by-two.txt)）
- [05-04-null-first.sql](05-04-null-first.sql)（[結果の見本](expected/05-04-null-first.txt)）
- [05-05-nulls-last.sql](05-05-nulls-last.sql)（[結果の見本](expected/05-05-nulls-last.txt)）

### section 02　LIMIT と OFFSET で上から何行かを取得する

- [05-06-limit.sql](05-06-limit.sql)（[結果の見本](expected/05-06-limit.txt)）
- [05-07-offset.sql](05-07-offset.sql)（[結果の見本](expected/05-07-offset.txt)）

### section 03　数の関数で値を整える

- [05-08-round.sql](05-08-round.sql)（[結果の見本](expected/05-08-round.txt)）
- [05-09-abs.sql](05-09-abs.sql)（[結果の見本](expected/05-09-abs.txt)）
- [05-10-integer-division.sql](05-10-integer-division.sql)（[結果の見本](expected/05-10-integer-division.txt)）

### section 04　文字列の関数で値を整える

- [05-11-length.sql](05-11-length.sql)（[結果の見本](expected/05-11-length.txt)）
- [05-12-substr.sql](05-12-substr.sql)（[結果の見本](expected/05-12-substr.txt)）
- [05-13-upper-lower.sql](05-13-upper-lower.sql)（[結果の見本](expected/05-13-upper-lower.txt)）
- [05-14-replace.sql](05-14-replace.sql)（[結果の見本](expected/05-14-replace.txt)）
- [05-15-trim.sql](05-15-trim.sql)（[結果の見本](expected/05-15-trim.txt)）

### section 05　日付の関数で年・月・曜日を取得する

- [05-16-date-parts.sql](05-16-date-parts.sql)（[結果の見本](expected/05-16-date-parts.txt)）
- [05-17-weekday.sql](05-17-weekday.sql)（[結果の見本](expected/05-17-weekday.txt)）

### section 06　値を言い換えて読みやすくする

- [05-18-case.sql](05-18-case.sql)（[結果の見本](expected/05-18-case.txt)）
- [05-19-case-weekday.sql](05-19-case-weekday.sql)（[結果の見本](expected/05-19-case-weekday.txt)）
- [05-20-coalesce.sql](05-20-coalesce.sql)（[結果の見本](expected/05-20-coalesce.txt)）
- [05-21-format.sql](05-21-format.sql)（[結果の見本](expected/05-21-format.txt)）
- [05-22-cast.sql](05-22-cast.sql)（[結果の見本](expected/05-22-cast.txt)）
- [05-23-combine.sql](05-23-combine.sql)（[結果の見本](expected/05-23-combine.txt)）

### section 07　並べ替えと割り算のつまずき

- [05-24-sort-text-number.sql](05-24-sort-text-number.sql)（[結果の見本](expected/05-24-sort-text-number.txt)）
- [05-25-sort-cast.sql](05-25-sort-cast.sql)（[結果の見本](expected/05-25-sort-cast.txt)）
- [05-26-divide-zero.sql](05-26-divide-zero.sql)（[結果の見本](expected/05-26-divide-zero.txt)）

### section 08　練習問題: 商品を税込み価格の高い順に並べる

- [05-27-practice.sql](05-27-practice.sql)（[結果の見本](expected/05-27-practice.txt)）

`expected` のフォルダーには結果の見本が入っています。
