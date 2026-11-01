SELECT
  count(*) AS "行の数",
  count(DISTINCT o.order_id) AS "注文の数"
FROM orders AS o
INNER JOIN order_items AS oi
  ON o.order_id = oi.order_id;
