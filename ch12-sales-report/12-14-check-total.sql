SELECT
  count(*) AS "明細の数",
  count(DISTINCT order_id) AS "注文の数",
  sum(amount) AS "売上"
FROM order_details;
