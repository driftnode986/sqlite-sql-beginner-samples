SELECT p.name AS "商品", sum(oi.quantity) AS "売れた数"
FROM products AS p
INNER JOIN order_items AS oi
  ON p.product_id = oi.product_id
GROUP BY p.product_id, p.name;
