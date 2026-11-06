# 第3章　SELECT で表からデータを取得する

書籍『はじめての SQLite で学ぶ SQL 入門』第3章のサンプルです。[トップのページに戻る](../README.md)

## この章でやること

- ①すべての列を出す
- ②列を選ぶ
- ③列を作る
- ④読みやすく書く

## このページの使い方

この章の SQL はすべて本に載っています。本を見ながら、DB Browser for SQLite の「SQL実行」のタブに打って実行します。このページを開くのは、次のようなときです。

- **打ち間違いが見つからないとき** … 下の一覧でファイルの名前を押すと、SQL が表示されます。自分で打った SQL と見比べます
- **結果が本と同じか確かめたいとき** … 「結果の見本」を押します
- **打つかわりにコピーしたいとき** … ファイルの名前を押し、SQL の右上にあるコピーのボタンを押してから、「SQL実行」のタブに貼り付けます

SQL のファイルをダウンロードする必要はありません。結果の見本は、DB Browser for SQLite とは別のツール（sqlite3 コマンド）で実行したものです。罫線などの見た目は画面と違いますが、列と行の値は同じです。値が無い所（NULL）は、見本では空欄、画面では NULL と表示されます。エラーの見本は、メッセージの文面が画面と少し違うことがあります。

## 本の section と SQL のファイル

### section 01　表のすべての列を取得する

- [03-01-select-all.sql](03-01-select-all.sql)（[結果の見本](expected/03-01-select-all.txt)）
- [03-02-limit.sql](03-02-limit.sql)（[結果の見本](expected/03-02-limit.txt)）

### section 02　必要な列だけを取得する

- [03-03-select-columns.sql](03-03-select-columns.sql)（[結果の見本](expected/03-03-select-columns.txt)）
- [03-04-column-order.sql](03-04-column-order.sql)（[結果の見本](expected/03-04-column-order.txt)）
- [03-05-alias.sql](03-05-alias.sql)（[結果の見本](expected/03-05-alias.txt)）
- [03-06-distinct.sql](03-06-distinct.sql)（[結果の見本](expected/03-06-distinct.txt)）

### section 03　計算した列・つないだ列を作る

- [03-07-tax-decimal.sql](03-07-tax-decimal.sql)（[結果の見本](expected/03-07-tax-decimal.txt)）
- [03-08-tax-integer.sql](03-08-tax-integer.sql)（[結果の見本](expected/03-08-tax-integer.txt)）
- [03-09-concat.sql](03-09-concat.sql)（[結果の見本](expected/03-09-concat.txt)）
- [03-10-quotes.sql](03-10-quotes.sql)（[結果の見本](expected/03-10-quotes.txt)）
- [03-11-single-quoted-column.sql](03-11-single-quoted-column.sql)（[結果の見本](expected/03-11-single-quoted-column.txt)）
- [03-12-typeof.sql](03-12-typeof.sql)（[結果の見本](expected/03-12-typeof.txt)）
- [03-13-typeof-columns.sql](03-13-typeof-columns.sql)（[結果の見本](expected/03-13-typeof-columns.txt)）

### section 04　SQL を読みやすく書く

- [03-14-lowercase.sql](03-14-lowercase.sql)（[結果の見本](expected/03-14-lowercase.txt)）
- [03-15-comments.sql](03-15-comments.sql)（[結果の見本](expected/03-15-comments.txt)）
- [03-16-readable.sql](03-16-readable.sql)（[結果の見本](expected/03-16-readable.txt)）

### section 05　よくあるエラーとメッセージの読み方

- [03-17-no-such-table.error.sql](03-17-no-such-table.error.sql) … エラーになる例（[エラーの見本](expected/03-17-no-such-table.error.txt)）
- [03-18-no-such-column.error.sql](03-18-no-such-column.error.sql) … エラーになる例（[エラーの見本](expected/03-18-no-such-column.error.txt)）
- [03-19-syntax-error.error.sql](03-19-syntax-error.error.sql) … エラーになる例（[エラーの見本](expected/03-19-syntax-error.error.txt)）

### section 06　練習問題: 商品名と税込み価格を取得する

- [03-20-practice.sql](03-20-practice.sql)（[結果の見本](expected/03-20-practice.txt)）

`expected` のフォルダーには結果の見本が入っています。
