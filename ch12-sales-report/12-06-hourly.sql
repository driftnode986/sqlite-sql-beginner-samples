SELECT
  strftime('%H', ordered_at) AS "時",
  count(*) AS "注文の数"
FROM orders
GROUP BY strftime('%H', ordered_at)
ORDER BY "時";
