# サンプルを作って確かめる手順

サンプルを作る側の手順です。本を読み進めるときは使いません。

```bash
python3 tools/gen-data.py                 # data/cafe.sql と CSV を作る（何度実行しても同じ）
uv run --with openpyxl python tools/make-xlsx.py   # 第11章の Excel のファイルを CSV から作る
sqlite3 data/cafe.db < data/cafe.sql      # 配布する cafe.db を作る（作り直すときは先に古いファイルを消す）
cd ch03-select && bash ../tools/check-sql.sh   # 章の SQL を実行し、expected/ と一致するか確かめる
python3 -m sqlfluff lint .                # SQL の書き方の検査（設定は .sqlfluff）
```

## フォルダーの決まり

- `chNN-…/expected/` … その SQL を sqlite3 で実行した結果
- `chNN-…/prereq/` … その SQL の前に実行しておく SQL の一覧（前の SQL で作った表を使う SQL だけにある）
- `ch11-import-csv/fixtures/`・`ch12-sales-report/fixtures/` … DB Browser で CSV を取り込んだ表と同じ表を作る SQL
- `data/csv/` … UTF-8 の5つと、Shift_JIS の見本1つ。UTF-8 のファイルは Excel の「CSV UTF-8」と同じく先頭に BOM が付いている
