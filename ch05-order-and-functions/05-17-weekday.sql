SELECT DISTINCT
  date(ordered_at) AS "日付",
  strftime('%w', ordered_at) AS "曜日の番号"
FROM orders
ORDER BY "日付"
LIMIT 7;
