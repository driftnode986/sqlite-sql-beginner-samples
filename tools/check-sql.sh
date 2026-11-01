#!/usr/bin/env bash
# 章のフォルダーの SQL を実行し、expected/ の期待結果と1文字違わず一致するかを確かめる。
#
# 使い方（章のフォルダーで実行する）:
#   bash ../tools/check-sql.sh            照合する（不一致・SQL 0 本・cafe.db の食い違いで exit 1）
#   bash ../tools/check-sql.sh --update   期待結果を書き直す（SQL を直したとき。差分は必ず目で見る）
#
# - SQL は1本ごとに、data/cafe.sql から作り直した新しいデータベースで実行する（第10章の UPDATE などが他に響かない）
# - 実行は sqlite3 -bail -header -box（本の結果の表と同じ見た目）
# - ファイル名が *.error.sql の SQL はエラーになることを期待する（エラーの文言も期待結果に含める）
# - data/cafe.db（読者が開くファイル）が data/cafe.sql と同じ中身かも確かめる
# - prereq/NN-MM-名前.txt があれば、そこに書いた同じ章の SQL（1行に1本）を先に同じデータベースで流してから実行する
#   （第9章のように、前の SQL で作った表に行を入れる SQL。読者が DB Browser で順に実行する流れと同じ。
#    先に流す SQL の出力は捨てる。*.error.sql はエラーで止まってよい・それ以外はエラーなら FAIL）
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
UPDATE=0
[ "${1:-}" = "--update" ] && UPDATE=1

command -v sqlite3 >/dev/null || { echo "FAIL: sqlite3 がありません"; exit 1; }
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

# 1. data/cafe.sql から作り直し、配布している data/cafe.db と中身が同じか
sqlite3 -bail "$TMP/fresh.db" < "$ROOT/data/cafe.sql"
if [ ! -f "$ROOT/data/cafe.db" ]; then
  echo "FAIL: data/cafe.db がありません（sqlite3 data/cafe.db < data/cafe.sql で作る）"; exit 1
fi
if ! diff -q <(sqlite3 "$TMP/fresh.db" .dump) <(sqlite3 "$ROOT/data/cafe.db" .dump) >/dev/null; then
  echo "FAIL: data/cafe.db が data/cafe.sql と食い違っています（作り直す）"; exit 1
fi

# 2. 章の SQL を1本ずつ
shopt -s nullglob
files=( *.sql )
if [ ${#files[@]} -eq 0 ]; then
  echo "FAIL: $(basename "$PWD") に SQL が1本もありません（テスト0件を通さない）"; exit 1
fi
mkdir -p expected
fail=0
for f in "${files[@]}"; do
  cp "$TMP/fresh.db" "$TMP/run.db"
  out="$TMP/${f%.sql}.txt"
  pre="prereq/${f%.sql}.txt"
  if [ -f "$pre" ]; then
    pre_ok=1
    while IFS= read -r p || [ -n "$p" ]; do
      [ -z "$p" ] && continue
      [ -f "$p" ] || { echo "FAIL: $pre に書いた $p がありません"; pre_ok=0; break; }
      if ! sqlite3 -bail "$TMP/run.db" < "$p" > /dev/null 2>&1 && [[ "$p" != *.error.sql ]]; then
        echo "FAIL: $f の前に流す $p がエラーになりました"; pre_ok=0; break
      fi
    done < "$pre"
    [ "$pre_ok" = 1 ] || { fail=1; continue; }
  fi
  if [[ "$f" == *.error.sql ]]; then
    if sqlite3 -bail -header -box "$TMP/run.db" < "$f" > "$out" 2>&1; then
      echo "FAIL: $f はエラーになるはずが成功しました"; fail=1; continue
    fi
  else
    if ! sqlite3 -bail -header -box "$TMP/run.db" < "$f" > "$out" 2>&1; then
      echo "FAIL: $f がエラーになりました"; sed 's/^/    /' "$out"; fail=1; continue
    fi
  fi
  exp="expected/${f%.sql}.txt"
  if [ "$UPDATE" = 1 ]; then
    cp "$out" "$exp"; echo "updated: $exp"
  elif [ ! -f "$exp" ]; then
    echo "FAIL: $exp がありません（--update で作り、中身を目で確かめる）"; fail=1
  elif ! diff -u "$exp" "$out"; then
    echo "FAIL: $f の結果が $exp と違います"; fail=1
  else
    echo "ok: $f"
  fi
done
[ "$fail" = 0 ] && echo "PASS: $(basename "$PWD") の SQL ${#files[@]} 本" || exit 1
