#!/usr/bin/env python3
"""サンプルデータ「こもれび珈琲」を作る。

data/cafe.sql（4表を作る SQL）と、第11章で取り込む CSV（UTF-8 と Shift_JIS）を書き出す。
乱数の種を固定しているので、何度実行しても同じファイルができる。
cafe.db は tools/check-sql.sh が cafe.sql から作り直し、repo の cafe.db と一致するかを確かめる。

使い方: python3 tools/gen-data.py
"""
import datetime as dt
import random
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
rng = random.Random(20260401)

STORES = [
    (1, "駅前店", "駅前", "2019-04-01"),
    (2, "公園通り店", "公園通り", "2021-10-01"),
    (3, "大学前店", "大学前", "2024-04-01"),
]

# (product_id, name, category, price, 売れやすさ)
PRODUCTS = [
    (1, "ブレンドコーヒー", "ドリンク", 450, 30),
    (2, "カフェラテ", "ドリンク", 550, 22),
    (3, "カプチーノ", "ドリンク", 550, 10),
    (4, "アイスコーヒー", "ドリンク", 480, 14),
    (5, "抹茶ラテ", "ドリンク", 600, 9),
    (6, "オレンジジュース", "ドリンク", 500, 5),
    (7, "チーズケーキ", "フード", 550, 12),
    (8, "ガトーショコラ", "フード", 580, 9),
    (9, "ホットサンド", "フード", 680, 11),
    (10, "ナポリタン", "フード", 900, 7),
    (11, "コーヒー豆（200g）", "豆", 1600, 3),
    (12, "季節のタルト", "フード", 650, 0),  # 一度も売れていない商品（第7章 LEFT JOIN の題材）
]

START = dt.date(2026, 4, 1)
END = dt.date(2026, 6, 30)


def q(s):
    return "'" + str(s).replace("'", "''") + "'"


def build_orders():
    orders, items = [], []
    order_id = 0
    sellable = [p for p in PRODUCTS if p[4] > 0]
    weights = [p[4] for p in sellable]
    day = START
    while day <= END:
        for store_id, *_ in STORES:
            busy = 2 if day.weekday() >= 5 else 0  # 土日は多い
            for _ in range(rng.randint(1, 3) + busy):
                order_id += 1
                hour = rng.choice([8, 9, 10, 11, 12, 12, 13, 13, 14, 15, 16, 17, 18])
                minute = rng.randint(0, 59)
                ordered_at = f"{day.isoformat()} {hour:02d}:{minute:02d}"
                member_id = rng.randint(1001, 1060) if rng.random() < 0.4 else None
                orders.append((order_id, store_id, ordered_at, member_id))
                chosen = {}
                for _ in range(rng.choice([1, 1, 2, 2, 3])):
                    p = rng.choices(sellable, weights=weights)[0]
                    chosen[p[0]] = chosen.get(p[0], 0) + 1
                for pid, qty in sorted(chosen.items()):
                    items.append((order_id, pid, qty))
        day += dt.timedelta(days=1)
    return orders, items


def write_sql(orders, items):
    lines = [
        "-- こもれび珈琲のサンプルデータ（tools/gen-data.py が作る。手で直さない）",
        "PRAGMA foreign_keys = ON;",
        "BEGIN;",
        "",
        "CREATE TABLE stores (",
        "  store_id   INTEGER PRIMARY KEY,",
        "  name       TEXT NOT NULL,",
        "  area       TEXT NOT NULL,",
        "  opened_on  TEXT NOT NULL",
        ");",
        "",
        "CREATE TABLE products (",
        "  product_id INTEGER PRIMARY KEY,",
        "  name       TEXT NOT NULL,",
        "  category   TEXT NOT NULL,",
        "  price      INTEGER NOT NULL",
        ");",
        "",
        "CREATE TABLE orders (",
        "  order_id   INTEGER PRIMARY KEY,",
        "  store_id   INTEGER NOT NULL REFERENCES stores (store_id),",
        "  ordered_at TEXT NOT NULL,",
        "  member_id  INTEGER",
        ");",
        "",
        "CREATE TABLE order_items (",
        "  order_id   INTEGER NOT NULL REFERENCES orders (order_id),",
        "  product_id INTEGER NOT NULL REFERENCES products (product_id),",
        "  quantity   INTEGER NOT NULL,",
        "  PRIMARY KEY (order_id, product_id)",
        ");",
        "",
    ]
    for s in STORES:
        lines.append(f"INSERT INTO stores VALUES ({s[0]}, {q(s[1])}, {q(s[2])}, {q(s[3])});")
    lines.append("")
    for p in PRODUCTS:
        lines.append(f"INSERT INTO products VALUES ({p[0]}, {q(p[1])}, {q(p[2])}, {p[3]});")
    lines.append("")
    for o in orders:
        member = "NULL" if o[3] is None else str(o[3])
        lines.append(f"INSERT INTO orders VALUES ({o[0]}, {o[1]}, {q(o[2])}, {member});")
    lines.append("")
    for it in items:
        lines.append(f"INSERT INTO order_items VALUES ({it[0]}, {it[1]}, {it[2]});")
    lines += ["", "COMMIT;", ""]
    (ROOT / "data").mkdir(exist_ok=True)
    (ROOT / "data" / "cafe.sql").write_text("\n".join(lines), encoding="utf-8")


def sales_rows(year, month, seed, dups=()):
    """Excel で管理していた昔の売上の1か月分（日付は 2025/4/1、金額は 1,000 の形・会員でない注文は会員番号が空）。

    dups に書いた行の番号（0 始まり）の行は、すぐ後ろにもう1回書く（レジの二重登録＝第11章の重複の題材）。
    """
    crng = random.Random(seed)
    names = {p[0]: p for p in PRODUCTS if p[4] > 0}
    day = dt.date(year, month, 1)
    rows = []
    while day.month == month:
        for _, sname, _, opened in STORES:
            if opened > day.isoformat():
                continue  # 開店前の店は出さない（大学前店は 2024-04-01 開店）
            for _ in range(crng.randint(1, 2)):
                while True:  # 偶然まったく同じ行ができたら引き直す（重複は dups の二重登録だけにする）
                    p = names[crng.choice(list(names))]
                    qty = crng.randint(1, 3)
                    member = str(crng.randint(1, 6)) if crng.random() < 0.4 else ""
                    row = (day, sname, p[1], qty, p[3] * qty, member)
                    if row not in rows:
                        break
                rows.append(row)
        day += dt.timedelta(days=1)
    out = []
    for i, r in enumerate(rows):
        out.append(r)
        if i in dups:
            out.append(r)
    return out


def csv_text(rows):
    lines = ["sale_date,store,product,quantity,amount,member_id"]
    for day, sname, pname, qty, amount, member in rows:
        a = f"{amount:,}"
        a = f'"{a}"' if "," in a else a
        lines.append(f"{day.year}/{day.month}/{day.day},{sname},{pname},{qty},{a},{member}")
    return "\r\n".join(lines)  # Excel の CSV UTF-8 は最後の行の後ろに改行を書かない（2026-11-01 実測）


# 第11章・第12章で使う CSV。(ファイル名の年月, 乱数の種, 二重に書く行)
SALES = {
    (2025, 4): (20250401, (17, 88)),
    (2024, 4): (20240401, ()),
    (2024, 5): (20240501, ()),
    (2025, 5): (20250501, ()),
    (2025, 6): (20250601, ()),  # 第12章: 新しい月を足して同じレポートを出し直す
}


def write_csv():
    """第11章: 昔の売上の CSV（UTF-8・BOM 付き＝Excel の「CSV UTF-8」と同じ形）と、Shift_JIS の見本。"""
    out = ROOT / "data" / "csv"
    out.mkdir(parents=True, exist_ok=True)
    for old in out.glob("*.csv"):
        old.unlink()
    for (y, m), (seed, dups) in SALES.items():
        text = csv_text(sales_rows(y, m, seed, dups))
        (out / f"sales_{y}_{m:02d}.csv").write_bytes(b"\xef\xbb\xbf" + text.encode("utf-8"))
        if (y, m) == (2025, 4):
            (out / f"sales_{y}_{m:02d}_sjis.csv").write_bytes(text.encode("cp932"))


if __name__ == "__main__":
    orders, items = build_orders()
    write_sql(orders, items)
    write_csv()
    print(f"orders={len(orders)} items={len(items)}")
