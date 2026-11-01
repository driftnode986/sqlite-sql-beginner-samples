SELECT
  store_id,
  strftime('%m', ordered_at) AS "月",
  count(*) AS "注文の数"
FROM orders
GROUP BY store_id, strftime('%m', ordered_at)
ORDER BY store_id ASC, "月" ASC;
