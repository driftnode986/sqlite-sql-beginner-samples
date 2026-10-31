# はじめての SQLite で学ぶ SQL 入門 サンプルファイル

書籍『はじめての SQLite で学ぶ SQL 入門』で使うサンプルのデータベースと SQL です。

## 使い方

1. このページの緑色の「Code」ボタンを押し、「Download ZIP」を選んでダウンロードします
2. ダウンロードした ZIP を開き（展開し）、中のフォルダーを分かりやすい場所に置きます
3. DB Browser for SQLite で `data/cafe.db` を開きます

本書の操作はすべて DB Browser for SQLite の画面で行います。詳しい手順は本書の第1章と第2章にあります。

## 中身

- `data/cafe.db` … 本書で使うデータベース。カフェ「こもれび珈琲」の4つの表が入っています
  - `stores`（店舗）・`products`（商品）・`orders`（注文）・`order_items`（注文の明細）
- `data/csv/` … 第11章で取り込む CSV ファイル（UTF-8 と Shift_JIS の2種類）
- `chNN-…/` … 各章の SQL。ファイル名の番号は本書の節の順です
  - `expected/` … その SQL を実行したときの結果

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
