# はじめての SQLite で学ぶ SQL 入門 サンプルファイル

書籍『はじめての SQLite で学ぶ SQL 入門』で使うサンプルのデータベースと SQL です。登録やログインは要りません。

## 使い方

### 最初に使うファイル（第1章）

最初に必要なのは、次の1つだけです。第1章から第10章まで、このファイルで進めます。

- **[cafe.db をダウンロード](https://github.com/driftnode986/sqlite-sql-beginner-samples/raw/main/data/cafe.db)** … こもれび珈琲の売上データが入ったデータベース

ダウンロードしたファイルは、「ドキュメント」（Mac は「書類」）の中の「SQL練習」フォルダーに保存し、DB Browser for SQLite で開きます。詳しい手順は本の第1章と第2章にあります。

### 第11章で使うファイル

第11章に進んでからダウンロードします。どれを使うかは本の第11章の最初に書いてあります。

- **[sales_2025_04.xlsx をダウンロード](https://github.com/driftnode986/sqlite-sql-beginner-samples/raw/main/data/excel/sales_2025_04.xlsx)** … 2025年4月の売上の Excel のファイル。第11章で CSV に保存します
- **[sales_2025_04.csv をダウンロード](https://github.com/driftnode986/sqlite-sql-beginner-samples/raw/main/data/csv/sales_2025_04.csv)** … Excel が無い人が、上の Excel のファイルのかわりに使う CSV
- **[sales_2025_04_sjis.csv をダウンロード](https://github.com/driftnode986/sqlite-sql-beginner-samples/raw/main/data/csv/sales_2025_04_sjis.csv)** … 文字化けを確かめる CSV（同じ中身を Shift_JIS で保存したもの）
- **[sales_2024_04.csv をダウンロード](https://github.com/driftnode986/sqlite-sql-beginner-samples/raw/main/data/csv/sales_2024_04.csv)** … 2年分をまとめるときに使う CSV（2024年4月の売上）
- **[sales_2024_05.csv をダウンロード](https://github.com/driftnode986/sqlite-sql-beginner-samples/raw/main/data/csv/sales_2024_05.csv)** … 練習問題の CSV（2024年5月の売上）
- **[sales_2025_05.csv をダウンロード](https://github.com/driftnode986/sqlite-sql-beginner-samples/raw/main/data/csv/sales_2025_05.csv)** … 練習問題の CSV（2025年5月の売上）

### 第12章で使うファイル

- **[sales_2025_06.csv をダウンロード](https://github.com/driftnode986/sqlite-sql-beginner-samples/raw/main/data/csv/sales_2025_06.csv)** … 新しい月として足す CSV（2025年6月の売上）
- **[12-08-report.sql をダウンロード](https://github.com/driftnode986/sqlite-sql-beginner-samples/raw/main/ch12-sales-report/12-08-report.sql)** … レポートの4つの SQL を1つにまとめたファイル。打つかわりに「SQLファイルを開く」で開けます

### リンクを押してもダウンロードされないとき

CSV や SQL のリンクを押すと、ブラウザーによっては、ファイルの中身の文字がそのまま表示されます。そのときは、リンクを右クリックして、リンク先をファイルとして保存する項目（「名前を付けてリンク先を保存」など。項目の名前はブラウザーによって違います）を選びます。保存したファイルの名前の後ろに `.txt` が付いていたら、`.txt` を消します。

## 章ごとの SQL

この本の SQL はすべて本に載っているので、ダウンロードしなくてかまいません。打ち間違いが見つからないときや、結果が本と同じか確かめたいときに、章のページを開きます。各章のページに、本の section ごとの SQL のファイルと結果の見本の一覧があります。

- [第1章　データベースと SQL ってなに？](ch01-what-is-sql/)
- [第2章　準備: DB Browser for SQLite で表を眺める（Windows・Mac）](ch02-db-browser/)
- [第3章　SELECT で表からデータを取得する](ch03-select/)
- [第4章　WHERE で行を絞り込む](ch04-where/)
- [第5章　並べ替えと関数で結果を整える](ch05-order-and-functions/)
- [第6章　GROUP BY で集計する](ch06-group-by/)
- [第7章　JOIN で表をつなぐ](ch07-join/)
- [第8章　サブクエリと WITH で、問いを分けて書く](ch08-subquery-and-with/)
- [第9章　表を作る（CREATE TABLE）](ch09-create-table/)
- [第10章　データを追加・更新・削除する](ch10-insert-update-delete/)
- [第11章　Excel・CSV のデータを取り込む](ch11-import-csv/)
- [第12章　総仕上げ: 自分のデータで売上レポートを作る](ch12-sales-report/)

## サンプルのデータ

`cafe.db` には、カフェ「こもれび珈琲」の4つの表が入っています。データは学習用に作った架空のものです。

- `stores` … 店舗
- `products` … 商品
- `orders` … 注文
- `order_items` … 注文の明細

## そのほかのファイル

- `data` … ダウンロードするファイルの置き場所。上のリンクから取得できるので、開かなくてかまいません
- `tools` … サンプルを作って確かめるためのものです。本を読み進めるときは使いません（説明は [tools/README.md](tools/README.md)）
- 免責事項は [DISCLAIMER.md](DISCLAIMER.md) に書いてあります
