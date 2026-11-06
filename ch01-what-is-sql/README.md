# 第1章　データベースと SQL ってなに？

書籍『はじめての SQLite で学ぶ SQL 入門』第1章のサンプルです。[トップのページに戻る](../README.md)

## この章でやること

- ①データベースを知る
- ②SQL を読む
- ③SQLite を知る
- ④サンプルを用意する

## 始める前に

- `cafe.db` をまだダウンロードしていないときは、[トップのページ](../README.md)の「使い方」からダウンロードします。手順は本の section 05 にあります。

## このページの使い方

この章では、SQL を読んで、結果を図で確かめます。まだ実行しません。実行は第2章で DB Browser for SQLite を入れてから行います。
SQL はすべて本に載っているので、このページは開かなくてかまいません。

結果の見本は、DB Browser for SQLite とは別のツール（sqlite3 コマンド）で実行したものです。罫線などの見た目は画面と違いますが、列と行の値は同じです。値が無い所（NULL）は、見本では空欄、画面では NULL と表示されます。エラーの見本は、メッセージの文面が画面と少し違うことがあります。

## 本の section と SQL のファイル

### section 02　SQL はデータベースに「これを見せて」と頼む言葉

- [01-01-select-name.sql](01-01-select-name.sql)（[結果の見本](expected/01-01-select-name.txt)）

### section 04　この本で使うサンプル：こもれび珈琲の4つの表

- [01-02-sales-by-store.sql](01-02-sales-by-store.sql)（[結果の見本](expected/01-02-sales-by-store.txt)）

`expected` のフォルダーには結果の見本が入っています。
