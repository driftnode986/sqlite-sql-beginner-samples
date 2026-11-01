SELECT
  strftime('%m', ordered_at) AS "月",
  count(*) AS "注文の数"
FROM orders
GROUP BY strftime('%m', ordered_at);
