# 第10章　データを追加・更新・削除する

書籍『はじめての SQLite で学ぶ SQL 入門』第10章のサンプルです。[トップのページに戻る](../README.md)

## この章でやること

- ①行を追加する
- ②ファイルをコピーする
- ③値を変える・行を消す
- ④書き込むか、取り消すか

## 始める前に

- 第9章で作った `members` の表を使います。第9章を先に進めておきます。
- この章の SQL は表の中身を変えます。本に出てくる順に1回ずつ実行します。

## このページの使い方

この章の SQL はすべて本に載っています。本を見ながら、DB Browser for SQLite の「SQL実行」のタブに打って実行します。このページを開くのは、次のようなときです。

- **打ち間違いが見つからないとき** … 下の一覧でファイルの名前を押すと、SQL が表示されます。自分で打った SQL と見比べます
- **結果が本と同じか確かめたいとき** … 「結果の見本」を押します
- **打つかわりにコピーしたいとき** … ファイルの名前を押し、SQL の右上にあるコピーのボタンを押してから、「SQL実行」のタブに貼り付けます

SQL のファイルをダウンロードする必要はありません。結果の見本は、DB Browser for SQLite とは別のツール（sqlite3 コマンド）で実行したものです。罫線などの見た目は画面と違いますが、列と行の値は同じです。値が無い所（NULL）は、見本では空欄、画面では NULL と表示されます。エラーの見本は、メッセージの文面が画面と少し違うことがあります。

## 本の section と SQL のファイル

### section 01　INSERT INTO で行を追加する

- [10-01-insert-values.sql](10-01-insert-values.sql)（[結果の見本](expected/10-01-insert-values.txt)）
- [10-02-select-members.sql](10-02-select-members.sql)（[結果の見本](expected/10-02-select-members.txt)）
- [10-03-insert-count.error.sql](10-03-insert-count.error.sql) … エラーになる例（[エラーの見本](expected/10-03-insert-count.error.txt)）
- [10-04-insert-columns.sql](10-04-insert-columns.sql)（[結果の見本](expected/10-04-insert-columns.txt)）
- [10-05-insert-many.sql](10-05-insert-many.sql)（[結果の見本](expected/10-05-insert-many.txt)）
- [10-06-insert-select.sql](10-06-insert-select.sql)（[結果の見本](expected/10-06-insert-select.txt)）
- [10-07-select-backup.sql](10-07-select-backup.sql)（[結果の見本](expected/10-07-select-backup.txt)）

### section 03　UPDATE で値を変える

- [10-08-select-drinks.sql](10-08-select-drinks.sql)（[結果の見本](expected/10-08-select-drinks.txt)）
- [10-09-update-drinks.sql](10-09-update-drinks.sql)（[結果の見本](expected/10-09-update-drinks.txt)）
- [10-10-compare-backup.sql](10-10-compare-backup.sql)（[結果の見本](expected/10-10-compare-backup.txt)）
- [10-11-update-no-where.sql](10-11-update-no-where.sql)（[結果の見本](expected/10-11-update-no-where.txt)）
- [10-12-select-prices.sql](10-12-select-prices.sql)（[結果の見本](expected/10-12-select-prices.txt)）

### section 04　DELETE で行を消す

- [10-13-select-member.sql](10-13-select-member.sql)（[結果の見本](expected/10-13-select-member.txt)）
- [10-14-delete-member.sql](10-14-delete-member.sql)（[結果の見本](expected/10-14-delete-member.txt)）
- [10-15-delete-no-where.sql](10-15-delete-no-where.sql)（[結果の見本](expected/10-15-delete-no-where.txt)）
- [10-02-select-members.sql](10-02-select-members.sql)（[結果の見本](expected/10-02-select-members.txt)）

### section 05　書き込むか、取り消すか（トランザクション）

- [10-16-begin.sql](10-16-begin.sql)（[結果の見本](expected/10-16-begin.txt)）

### section 06　練習問題：価格改定と取り消し

- [10-17-practice-update.sql](10-17-practice-update.sql)（[結果の見本](expected/10-17-practice-update.txt)）
- [10-18-practice-compare.sql](10-18-practice-compare.sql)（[結果の見本](expected/10-18-practice-compare.txt)）
- [10-19-practice-check.sql](10-19-practice-check.sql)（[結果の見本](expected/10-19-practice-check.txt)）

## 注意

- `10-16-begin.sql` は、DB Browser for SQLite ではエラーになる例です。結果の見本は空ですが、本の section 05 のとおり、DB Browser では `cannot start a transaction within a transaction` と出るのが正しい動きです。

`expected` のフォルダーには結果の見本が入っています。 `prereq` のフォルダーはサンプルを確かめるためのもので、本を読み進めるときは使いません。
