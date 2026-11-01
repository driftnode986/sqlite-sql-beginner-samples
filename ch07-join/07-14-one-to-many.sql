SELECT o.order_id, o.ordered_at, oi.product_id, oi.quantity
FROM orders AS o
INNER JOIN order_items AS oi
  ON o.order_id = oi.order_id
WHERE o.order_id <= 3;
