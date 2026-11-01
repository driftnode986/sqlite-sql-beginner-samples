SELECT DISTINCT
  date(ordered_at) AS "日付",
  CASE strftime('%w', ordered_at)
    WHEN '0' THEN '日'
    WHEN '1' THEN '月'
    WHEN '2' THEN '火'
    WHEN '3' THEN '水'
    WHEN '4' THEN '木'
    WHEN '5' THEN '金'
    ELSE '土'
  END AS "曜日"
FROM orders
ORDER BY "日付"
LIMIT 7;
