# 第4章　WHERE で行を絞り込む

書籍『はじめての SQLite で学ぶ SQL 入門』第4章のサンプルです。[トップのページに戻る](../README.md)

## この章でやること

- ①条件で行を絞る
- ②条件を組み合わせる
- ③範囲・候補・一部で選ぶ
- ④日付と NULL を扱う

## このページの使い方

この章の SQL はすべて本に載っています。本を見ながら、DB Browser for SQLite の「SQL実行」のタブに打って実行します。このページを開くのは、次のようなときです。

- **打ち間違いが見つからないとき** … 下の一覧でファイルの名前を押すと、SQL が表示されます。自分で打った SQL と見比べます
- **結果が本と同じか確かめたいとき** … 「結果の見本」を押します
- **打つかわりにコピーしたいとき** … ファイルの名前を押し、SQL の右上にあるコピーのボタンを押してから、「SQL実行」のタブに貼り付けます

SQL のファイルをダウンロードする必要はありません。結果の見本は、DB Browser for SQLite とは別のツール（sqlite3 コマンド）で実行したものです。罫線などの見た目は画面と違いますが、列と行の値は同じです。値が無い所（NULL）は、見本では空欄、画面では NULL と表示されます。エラーの見本は、メッセージの文面が画面と少し違うことがあります。

## 本の section と SQL のファイル

### section 01　WHERE で条件に合う行を取得する

- [04-01-price-500.sql](04-01-price-500.sql)（[結果の見本](expected/04-01-price-500.txt)）
- [04-02-price-equal.sql](04-02-price-equal.sql)（[結果の見本](expected/04-02-price-equal.txt)）
- [04-03-category-drink.sql](04-03-category-drink.sql)（[結果の見本](expected/04-03-category-drink.txt)）
- [04-04-not-equal.sql](04-04-not-equal.sql)（[結果の見本](expected/04-04-not-equal.txt)）

### section 02　条件を組み合わせる

- [04-05-and.sql](04-05-and.sql)（[結果の見本](expected/04-05-and.txt)）
- [04-06-or.sql](04-06-or.sql)（[結果の見本](expected/04-06-or.txt)）
- [04-07-and-or-no-paren.sql](04-07-and-or-no-paren.sql)（[結果の見本](expected/04-07-and-or-no-paren.txt)）
- [04-08-and-or-paren.sql](04-08-and-or-paren.sql)（[結果の見本](expected/04-08-and-or-paren.txt)）
- [04-09-not.sql](04-09-not.sql)（[結果の見本](expected/04-09-not.txt)）

### section 03　範囲・候補・一部で選ぶ

- [04-10-between.sql](04-10-between.sql)（[結果の見本](expected/04-10-between.txt)）
- [04-11-in.sql](04-11-in.sql)（[結果の見本](expected/04-11-in.txt)）
- [04-12-like-percent.sql](04-12-like-percent.sql)（[結果の見本](expected/04-12-like-percent.txt)）
- [04-13-like-contains.sql](04-13-like-contains.sql)（[結果の見本](expected/04-13-like-contains.txt)）
- [04-14-like-underscore.sql](04-14-like-underscore.sql)（[結果の見本](expected/04-14-like-underscore.txt)）
- [04-15-nocase.sql](04-15-nocase.sql)（[結果の見本](expected/04-15-nocase.txt)）
- [04-16-zenkaku.sql](04-16-zenkaku.sql)（[結果の見本](expected/04-16-zenkaku.txt)）
- [04-17-zenkaku-ok.sql](04-17-zenkaku-ok.sql)（[結果の見本](expected/04-17-zenkaku-ok.txt)）

### section 04　日付で行を絞る

- [04-18-april.sql](04-18-april.sql)（[結果の見本](expected/04-18-april.txt)）
- [04-19-between-dates.sql](04-19-between-dates.sql)（[結果の見本](expected/04-19-between-dates.txt)）
- [04-20-compare-text.sql](04-20-compare-text.sql)（[結果の見本](expected/04-20-compare-text.txt)）
- [04-21-date-function.sql](04-21-date-function.sql)（[結果の見本](expected/04-21-date-function.txt)）
- [04-22-date-between.sql](04-22-date-between.sql)（[結果の見本](expected/04-22-date-between.txt)）

### section 05　NULL（値が無い）の行を扱う

- [04-23-null-compare.sql](04-23-null-compare.sql)（[結果の見本](expected/04-23-null-compare.txt)）
- [04-24-is-null.sql](04-24-is-null.sql)（[結果の見本](expected/04-24-is-null.txt)）
- [04-25-is-not-null.sql](04-25-is-not-null.sql)（[結果の見本](expected/04-25-is-not-null.txt)）
- [04-26-equal-null.sql](04-26-equal-null.sql)（[結果の見本](expected/04-26-equal-null.txt)）

### section 06　数と文字列を比べるときのつまずき

- [04-27-text-number.sql](04-27-text-number.sql)（[結果の見本](expected/04-27-text-number.txt)）

### section 07　練習問題: 4月に駅前店で会員が注文した行

- [04-28-practice.sql](04-28-practice.sql)（[結果の見本](expected/04-28-practice.txt)）

`expected` のフォルダーには結果の見本が入っています。
