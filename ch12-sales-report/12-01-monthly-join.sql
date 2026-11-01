SELECT
  substr(o.ordered_at, 1, 7) AS "年月",
  count(DISTINCT o.order_id) AS "注文の数",
  sum(p.price * oi.quantity) AS "売上"
FROM orders AS o
INNER JOIN order_items AS oi
  ON o.order_id = oi.order_id
INNER JOIN products AS p
  ON oi.product_id = p.product_id
GROUP BY substr(o.ordered_at, 1, 7)
ORDER BY "年月";
