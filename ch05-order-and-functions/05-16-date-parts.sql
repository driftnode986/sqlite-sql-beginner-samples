SELECT
  ordered_at,
  date(ordered_at) AS "日付",
  strftime('%Y', ordered_at) AS "年",
  strftime('%m', ordered_at) AS "月"
FROM orders
WHERE order_id IN (1, 250, 500, 700);
