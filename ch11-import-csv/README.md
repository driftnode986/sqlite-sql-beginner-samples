# 第11章　Excel・CSV のデータを取り込む

書籍『はじめての SQLite で学ぶ SQL 入門』第11章のサンプルです。[トップのページに戻る](../README.md)

## この章でやること

- ①CSV で保存する
- ②取り込む
- ③値を整える
- ④書き出す

## 始める前に

- この章で使うファイルは、[トップのページ](../README.md)の「使い方」の「第11章で使うファイル」からダウンロードします。
- 本に出てくる順に1回ずつ実行します。表を作る SQL と行を追加する SQL があるので、同じ SQL を2回実行すると、エラーになったり、同じ行が2回入ったりします。

## このページの使い方

この章の SQL はすべて本に載っています。本を見ながら、DB Browser for SQLite の「SQL実行」のタブに打って実行します。このページを開くのは、次のようなときです。

- **打ち間違いが見つからないとき** … 下の一覧でファイルの名前を押すと、SQL が表示されます。自分で打った SQL と見比べます
- **結果が本と同じか確かめたいとき** … 「結果の見本」を押します
- **打つかわりにコピーしたいとき** … ファイルの名前を押し、SQL の右上にあるコピーのボタンを押してから、「SQL実行」のタブに貼り付けます

SQL のファイルをダウンロードする必要はありません。結果の見本は、DB Browser for SQLite とは別のツール（sqlite3 コマンド）で実行したものです。罫線などの見た目は画面と違いますが、列と行の値は同じです。値が無い所（NULL）は、見本では空欄、画面では NULL と表示されます。エラーの見本は、メッセージの文面が画面と少し違うことがあります。

## 本の section と SQL のファイル

### section 02　DB Browser で CSV を取り込む

- [11-01-count.sql](11-01-count.sql)（[結果の見本](expected/11-01-count.txt)）
- [11-02-head.sql](11-02-head.sql)（[結果の見本](expected/11-02-head.txt)）

### section 03　取り込んだ値を調べて、整え方を決める

- [11-03-typeof-amount.sql](11-03-typeof-amount.sql)（[結果の見本](expected/11-03-typeof-amount.txt)）
- [11-04-sum-wrong.sql](11-04-sum-wrong.sql)（[結果の見本](expected/11-04-sum-wrong.txt)）
- [11-05-replace-cast.sql](11-05-replace-cast.sql)（[結果の見本](expected/11-05-replace-cast.txt)）
- [11-06-sum-right.sql](11-06-sum-right.sql)（[結果の見本](expected/11-06-sum-right.txt)）
- [11-07-date-minmax.sql](11-07-date-minmax.sql)（[結果の見本](expected/11-07-date-minmax.txt)）
- [11-08-date-parts.sql](11-08-date-parts.sql)（[結果の見本](expected/11-08-date-parts.txt)）
- [11-09-date-format.sql](11-09-date-format.sql)（[結果の見本](expected/11-09-date-format.txt)）
- [11-10-null-member.sql](11-10-null-member.sql)（[結果の見本](expected/11-10-null-member.txt)）
- [11-11-find-duplicates.sql](11-11-find-duplicates.sql)（[結果の見本](expected/11-11-find-duplicates.txt)）

### section 04　整えた値を、先に作った表にまとめる

- [11-12-create-sales.sql](11-12-create-sales.sql)（[結果の見本](expected/11-12-create-sales.txt)）
- [11-13-insert-sales.sql](11-13-insert-sales.sql)（[結果の見本](expected/11-13-insert-sales.txt)）
- [11-14-check-sales.sql](11-14-check-sales.sql)（[結果の見本](expected/11-14-check-sales.txt)）
- [11-15-check-types.sql](11-15-check-types.sql)（[結果の見本](expected/11-15-check-types.txt)）
- [11-16-import-month.sql](11-16-import-month.sql)（[結果の見本](expected/11-16-import-month.txt)）
- [11-16-delete-month.sql](11-16-delete-month.sql)（[結果の見本](expected/11-16-delete-month.txt)）

### section 06　練習問題：2年分の5月の売上をまとめる

- [11-17-practice-2024-05.sql](11-17-practice-2024-05.sql)（[結果の見本](expected/11-17-practice-2024-05.txt)）
- [11-18-practice-2025-05.sql](11-18-practice-2025-05.sql)（[結果の見本](expected/11-18-practice-2025-05.txt)）
- [11-19-practice-may.sql](11-19-practice-may.sql)（[結果の見本](expected/11-19-practice-may.txt)）

`expected` のフォルダーには結果の見本が入っています。 `prereq`・`fixtures` のフォルダーはサンプルを確かめるためのもので、本を読み進めるときは使いません。
