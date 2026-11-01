SELECT
  ordered_at,
  substr(ordered_at, 1, 10) AS "日付",
  substr(ordered_at, 12) AS "時刻"
FROM orders
ORDER BY order_id
LIMIT 5;
