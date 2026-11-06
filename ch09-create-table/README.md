# 第9章　表を作る（CREATE TABLE）

書籍『はじめての SQLite で学ぶ SQL 入門』第9章のサンプルです。[トップのページに戻る](../README.md)

## この章でやること

- ①列を決めて作る
- ②型を決める
- ③決まりを付ける
- ④画面で作って確かめる

## 始める前に

- この章の SQL は表を作ったり消したりします。本に出てくる順に1回ずつ実行します。同じ SQL を2回実行すると、エラーになったり、同じ行が2回入ったりします。

## このページの使い方

この章の SQL はすべて本に載っています。本を見ながら、DB Browser for SQLite の「SQL実行」のタブに打って実行します。このページを開くのは、次のようなときです。

- **打ち間違いが見つからないとき** … 下の一覧でファイルの名前を押すと、SQL が表示されます。自分で打った SQL と見比べます
- **結果が本と同じか確かめたいとき** … 「結果の見本」を押します
- **打つかわりにコピーしたいとき** … ファイルの名前を押し、SQL の右上にあるコピーのボタンを押してから、「SQL実行」のタブに貼り付けます

SQL のファイルをダウンロードする必要はありません。結果の見本は、DB Browser for SQLite とは別のツール（sqlite3 コマンド）で実行したものです。罫線などの見た目は画面と違いますが、列と行の値は同じです。値が無い所（NULL）は、見本では空欄、画面では NULL と表示されます。エラーの見本は、メッセージの文面が画面と少し違うことがあります。

## 本の section と SQL のファイル

### section 01　CREATE TABLE で表を作る

- [09-01-create-members-basic.sql](09-01-create-members-basic.sql)（[結果の見本](expected/09-01-create-members-basic.txt)）

### section 02　列の型に直せない値を入れられなくする（STRICT）

- [09-02-type-experiment.sql](09-02-type-experiment.sql)（[結果の見本](expected/09-02-type-experiment.txt)）
- [09-03-type-compare.sql](09-03-type-compare.sql)（[結果の見本](expected/09-03-type-compare.txt)）
- [09-04-strict.error.sql](09-04-strict.error.sql) … エラーになる例（[エラーの見本](expected/09-04-strict.error.txt)）

### section 03　主キーなどの決まりを付けて作り直す

- [09-05-members-exists.error.sql](09-05-members-exists.error.sql) … エラーになる例（[エラーの見本](expected/09-05-members-exists.error.txt)）
- [09-06-drop-members.sql](09-06-drop-members.sql)（[結果の見本](expected/09-06-drop-members.txt)）
- [09-07-create-members.sql](09-07-create-members.sql)（[結果の見本](expected/09-07-create-members.txt)）
- [09-08-insert-members.sql](09-08-insert-members.sql)（[結果の見本](expected/09-08-insert-members.txt)）
- [09-09-same-id.error.sql](09-09-same-id.error.sql) … エラーになる例（[エラーの見本](expected/09-09-same-id.error.txt)）
- [09-10-not-null.error.sql](09-10-not-null.error.sql) … エラーになる例（[エラーの見本](expected/09-10-not-null.error.txt)）
- [09-11-unique.error.sql](09-11-unique.error.sql) … エラーになる例（[エラーの見本](expected/09-11-unique.error.txt)）

### section 04　日付と名前の決め方

- [09-12-date-compare.sql](09-12-date-compare.sql)（[結果の見本](expected/09-12-date-compare.txt)）
- [09-13-date-function.sql](09-13-date-function.sql)（[結果の見本](expected/09-13-date-function.txt)）

### section 05　画面で表を作って確かめる

- [09-14-table-info.sql](09-14-table-info.sql)（[結果の見本](expected/09-14-table-info.txt)）

### section 06　表を消す前の注意と、外部キー・2つの列を組にした主キー

- [09-15-drop-strict-test.sql](09-15-drop-strict-test.sql)（[結果の見本](expected/09-15-drop-strict-test.txt)）

### section 07　練習問題：予約の表を作る

- [09-16-practice-reservations.sql](09-16-practice-reservations.sql)（[結果の見本](expected/09-16-practice-reservations.txt)）
- [09-17-practice-check.sql](09-17-practice-check.sql)（[結果の見本](expected/09-17-practice-check.txt)）
- [09-18-practice-people.error.sql](09-18-practice-people.error.sql) … エラーになる例（[エラーの見本](expected/09-18-practice-people.error.txt)）

`expected` のフォルダーには結果の見本が入っています。 `prereq` のフォルダーはサンプルを確かめるためのもので、本を読み進めるときは使いません。
