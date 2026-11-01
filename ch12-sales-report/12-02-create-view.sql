CREATE VIEW order_details AS
SELECT
  o.order_id,
  o.ordered_at,
  s.name AS store,
  p.name AS product,
  oi.quantity,
  p.price * oi.quantity AS amount
FROM orders AS o
INNER JOIN stores AS s
  ON o.store_id = s.store_id
INNER JOIN order_items AS oi
  ON o.order_id = oi.order_id
INNER JOIN products AS p
  ON oi.product_id = p.product_id;
