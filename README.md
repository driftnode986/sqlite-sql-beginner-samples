# はじめての SQLite で学ぶ SQL 入門 サンプルファイル

書籍『はじめての SQLite で学ぶ SQL 入門』で使うサンプルのデータベースと SQL です。

## 使い方

本書で使うファイルは、次のリンクから1つずつダウンロードできます。
ダウンロードしたファイルは、「ドキュメント」の中に作った「SQL練習」フォルダーに保存します（本書の第1章）。

- **[cafe.db をダウンロード](https://github.com/driftnode986/sqlite-sql-beginner-samples/raw/main/data/cafe.db)** … 第1章から使うデータベース
- **[sales_2025_04_utf8.csv をダウンロード](https://github.com/driftnode986/sqlite-sql-beginner-samples/raw/main/data/csv/sales_2025_04_utf8.csv)** … 第11章で取り込む CSV（UTF-8）
- **[sales_2025_04_sjis.csv をダウンロード](https://github.com/driftnode986/sqlite-sql-beginner-samples/raw/main/data/csv/sales_2025_04_sjis.csv)** … 第11章で取り込む CSV（Shift_JIS。文字化けを確かめる見本）

ダウンロードした `cafe.db` を DB Browser for SQLite で開きます。
各章の SQL は、このページの章ごとのフォルダー（`ch03-select` など）でファイル名を押すと読めます。本書の操作では SQL を DB Browser の「SQL実行」タブに入力します。

本書の操作はすべて DB Browser for SQLite の画面で行います。詳しい手順は本書の第1章と第2章にあります。

## 中身

- `data/cafe.db` … 本書で使うデータベース。カフェ「こもれび珈琲」の4つの表が入っています
  - `stores`（店舗）・`products`（商品）・`orders`（注文）・`order_items`（注文の明細）
- `data/csv/` … 第11章で取り込む CSV ファイル（UTF-8 と Shift_JIS の2種類）
- `chNN-…/` … 各章の SQL。ファイル名の番号は本書の節の順です
  - `expected/` … その SQL を実行したときの結果
  - `prereq/` … その SQL の前に実行しておく同じ章の SQL（第9章のように、前の SQL で作った表を使う SQL だけにあります。本書の順に1回ずつ実行すれば同じ状態になります）

サンプルのデータは、学習用に作った架空のものです。

## 確認のしかた（サンプルを作る側の手順）

読者の方は使う必要はありません。

```bash
python3 tools/gen-data.py                 # data/cafe.sql と CSV を作る（何度実行しても同じ）
sqlite3 data/cafe.db < data/cafe.sql      # 配布する cafe.db を作る（作り直すときは先に古いファイルを消す）
cd ch03-select && bash ../tools/check-sql.sh   # 章の SQL を実行し、expected/ と一致するか確かめる
python3 -m sqlfluff lint .                # SQL の書き方の検査（設定は .sqlfluff）
```

免責事項は [DISCLAIMER.md](DISCLAIMER.md) を読んでください。
