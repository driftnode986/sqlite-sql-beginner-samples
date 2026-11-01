SELECT
  substr(ordered_at, 1, 7) AS "年月",
  count(DISTINCT order_id) AS "注文の数",
  sum(amount) AS "売上"
FROM order_details
GROUP BY substr(ordered_at, 1, 7)
ORDER BY "年月";
