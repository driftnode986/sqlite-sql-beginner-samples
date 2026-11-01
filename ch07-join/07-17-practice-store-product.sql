SELECT
  s.name AS "店舗",
  p.name AS "商品",
  sum(p.price * oi.quantity) AS "売上"
FROM order_items AS oi
INNER JOIN orders AS o
  ON oi.order_id = o.order_id
INNER JOIN stores AS s
  ON o.store_id = s.store_id
INNER JOIN products AS p
  ON oi.product_id = p.product_id
GROUP BY s.store_id, s.name, p.product_id, p.name
ORDER BY s.store_id ASC, "売上" DESC;
