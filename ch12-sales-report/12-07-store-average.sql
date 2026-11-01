SELECT
  store AS "店",
  count(DISTINCT order_id) AS "注文の数",
  sum(amount) AS "売上",
  round(
    sum(amount) * 1.0 / count(DISTINCT order_id), 1
  ) AS "客単価"
FROM order_details
GROUP BY store
ORDER BY "売上" DESC;
