SELECT oi.order_id, oi.product_id, p.name
FROM order_items AS oi
INNER JOIN products AS p
  ON oi.product_id = p.product_id;
