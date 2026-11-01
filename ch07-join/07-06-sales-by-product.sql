SELECT
  p.name AS "商品",
  sum(oi.quantity) AS "売れた数",
  sum(p.price * oi.quantity) AS "売上"
FROM order_items AS oi
INNER JOIN products AS p
  ON oi.product_id = p.product_id
GROUP BY p.product_id, p.name;
