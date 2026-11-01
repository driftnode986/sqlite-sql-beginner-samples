SELECT
  o.order_id,
  o.ordered_at,
  s.name AS "店舗",
  p.name AS "商品",
  oi.quantity
FROM order_items AS oi
INNER JOIN orders AS o
  ON oi.order_id = o.order_id
INNER JOIN stores AS s
  ON o.store_id = s.store_id
INNER JOIN products AS p
  ON oi.product_id = p.product_id;
