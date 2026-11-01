SELECT DISTINCT p.product_id, p.name
FROM orders AS o
INNER JOIN order_items AS oi
  ON o.order_id = oi.order_id
INNER JOIN products AS p
  ON oi.product_id = p.product_id
WHERE date(o.ordered_at) = '2026-06-30'
ORDER BY p.product_id ASC;
