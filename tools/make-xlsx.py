#!/usr/bin/env python3
"""第11章の Excel の見本 data/excel/sales_2025_04.xlsx を作る（data/csv/sales_2025_04.csv と同じ行）。

日付は Excel の日付（表示は 2025/4/1）、金額は数（表示は 1,100 の桁区切り）にする。
この xlsx を Excel で「CSV UTF-8（コンマ区切り）」で保存すると、data/csv/sales_2025_04.csv と同じ中身になる。

使い方: uv run --with openpyxl python tools/make-xlsx.py
"""
import csv
import datetime as dt
from pathlib import Path

import openpyxl
from openpyxl.styles import Font

ROOT = Path(__file__).resolve().parent.parent
src = ROOT / "data" / "csv" / "sales_2025_04.csv"
rows = list(csv.reader(src.read_text(encoding="utf-8-sig").splitlines()))

wb = openpyxl.Workbook()
ws = wb.active
ws.title = "2025年4月"
ws.append(rows[0])
for c in ws[1]:
    c.font = Font(bold=True)
for r in rows[1:]:
    y, m, d = map(int, r[0].split("/"))
    ws.append([dt.date(y, m, d), r[1], r[2], int(r[3]), int(r[4].replace(",", "")),
               int(r[5]) if r[5] else None])
    ws.cell(ws.max_row, 1).number_format = "yyyy/m/d"
    ws.cell(ws.max_row, 5).number_format = "#,##0"
for col, w in zip("ABCDEF", (12, 12, 20, 10, 10, 11)):
    ws.column_dimensions[col].width = w
out = ROOT / "data" / "excel"
out.mkdir(exist_ok=True)
wb.properties.creator = "sample"
wb.properties.lastModifiedBy = "sample"
wb.save(out / "sales_2025_04.xlsx")
print(out / "sales_2025_04.xlsx")
