# 第12章　総仕上げ: 自分のデータで売上レポートを作る

書籍『はじめての SQLite で学ぶ SQL 入門』第12章のサンプルです。[トップのページに戻る](../README.md)

## この章でやること

- ①問いを決めて集計する
- ②ビューで名前を付ける
- ③まとめてグラフにする
- ④新しい月を足して確かめる

## 始める前に

- 第11章で作った `sales` の表を使います。第11章を先に進めておきます。
- `sales_2025_06.csv` と `12-08-report.sql` は、[トップのページ](../README.md)の「使い方」の「第12章で使うファイル」からダウンロードします。

## このページの使い方

この章の SQL はすべて本に載っています。本を見ながら、DB Browser for SQLite の「SQL実行」のタブに打って実行します。このページを開くのは、次のようなときです。

- **打ち間違いが見つからないとき** … 下の一覧でファイルの名前を押すと、SQL が表示されます。自分で打った SQL と見比べます
- **結果が本と同じか確かめたいとき** … 「結果の見本」を押します
- **打つかわりにコピーしたいとき** … ファイルの名前を押し、SQL の右上にあるコピーのボタンを押してから、「SQL実行」のタブに貼り付けます

SQL のファイルをダウンロードする必要はありません。結果の見本は、DB Browser for SQLite とは別のツール（sqlite3 コマンド）で実行したものです。罫線などの見た目は画面と違いますが、列と行の値は同じです。値が無い所（NULL）は、見本では空欄、画面では NULL と表示されます。エラーの見本は、メッセージの文面が画面と少し違うことがあります。

## 本の section と SQL のファイル

### section 01　問いを決めて、月ごとの売上を出す

- [12-01-monthly-join.sql](12-01-monthly-join.sql)（[結果の見本](expected/12-01-monthly-join.txt)）
- [12-01-restore-prices.sql](12-01-restore-prices.sql)（[結果の見本](expected/12-01-restore-prices.txt)）

### section 02　表をつなぐ SELECT にビューで名前を付けて使い回す

- [12-02-create-view.sql](12-02-create-view.sql)（[結果の見本](expected/12-02-create-view.txt)）
- [12-03-view-head.sql](12-03-view-head.sql)（[結果の見本](expected/12-03-view-head.txt)）
- [12-04-monthly-view.sql](12-04-monthly-view.sql)（[結果の見本](expected/12-04-monthly-view.txt)）
- [12-05-product-ranking.sql](12-05-product-ranking.sql)（[結果の見本](expected/12-05-product-ranking.txt)）
- [12-06-hourly.sql](12-06-hourly.sql)（[結果の見本](expected/12-06-hourly.txt)）
- [12-07-store-average.sql](12-07-store-average.sql)（[結果の見本](expected/12-07-store-average.txt)）

### section 03　レポートを1つのファイルにまとめ、Excel でグラフにする

- [12-08-report.sql](12-08-report.sql)（[結果の見本](expected/12-08-report.txt)）

### section 04　新しい月のデータを足して、結果が正しいかを確かめる

- [12-09-create-sales-monthly.sql](12-09-create-sales-monthly.sql)（[結果の見本](expected/12-09-create-sales-monthly.txt)）
- [12-10-sales-monthly.sql](12-10-sales-monthly.sql)（[結果の見本](expected/12-10-sales-monthly.txt)）
- [12-11-add-2025-06.sql](12-11-add-2025-06.sql)（[結果の見本](expected/12-11-add-2025-06.txt)）
- [12-12-check-raw.sql](12-12-check-raw.sql)（[結果の見本](expected/12-12-check-raw.txt)）
- [12-13-check-sales.sql](12-13-check-sales.sql)（[結果の見本](expected/12-13-check-sales.txt)）
- [12-14-check-total.sql](12-14-check-total.sql)（[結果の見本](expected/12-14-check-total.txt)）

### section 05　練習問題：自分のデータでレポートを1本作る

- [12-15-practice-view.sql](12-15-practice-view.sql)（[結果の見本](expected/12-15-practice-view.txt)）
- [12-16-practice-select.sql](12-16-practice-select.sql)（[結果の見本](expected/12-16-practice-select.txt)）

`expected` のフォルダーには結果の見本が入っています。 `prereq`・`fixtures` のフォルダーはサンプルを確かめるためのもので、本を読み進めるときは使いません。
