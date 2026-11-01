SELECT oi.order_id, p.name, oi.quantity
FROM order_items AS oi
INNER JOIN products AS p
  ON oi.product_id = p.product_id;
