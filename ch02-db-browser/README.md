# 第2章　準備: DB Browser for SQLite で表を眺める（Windows・Mac）

書籍『はじめての SQLite で学ぶ SQL 入門』第2章のサンプルです。[トップのページに戻る](../README.md)

## この章でやること

- ①DB Browser を入れる
- ②cafe.db を開く
- ③表を眺める
- ④SQL を実行する

## 始める前に

- `cafe.db` は第1章で「SQL練習」フォルダーに保存したものを使います。まだのときは[トップのページ](../README.md)の「使い方」からダウンロードします。

## このページの使い方

この章の SQL はすべて本に載っています。本を見ながら、DB Browser for SQLite の「SQL実行」のタブに打って実行します。このページを開くのは、次のようなときです。

- **打ち間違いが見つからないとき** … 下の一覧でファイルの名前を押すと、SQL が表示されます。自分で打った SQL と見比べます
- **結果が本と同じか確かめたいとき** … 「結果の見本」を押します
- **打つかわりにコピーしたいとき** … ファイルの名前を押し、SQL の右上にあるコピーのボタンを押してから、「SQL実行」のタブに貼り付けます

SQL のファイルをダウンロードする必要はありません。結果の見本は、DB Browser for SQLite とは別のツール（sqlite3 コマンド）で実行したものです。罫線などの見た目は画面と違いますが、列と行の値は同じです。値が無い所（NULL）は、見本では空欄、画面では NULL と表示されます。エラーの見本は、メッセージの文面が画面と少し違うことがあります。

## 本の section と SQL のファイル

### section 05　最初の SQL を実行する

- [02-01-one-plus-one.sql](02-01-one-plus-one.sql)（[結果の見本](expected/02-01-one-plus-one.txt)）
- [02-03-typo.error.sql](02-03-typo.error.sql) … エラーになる例（[エラーの見本](expected/02-03-typo.error.txt)）

### section 07　この章の操作でつまずきやすい点

- [02-02-two-statements.sql](02-02-two-statements.sql)（[結果の見本](expected/02-02-two-statements.txt)）

`expected` のフォルダーには結果の見本が入っています。
