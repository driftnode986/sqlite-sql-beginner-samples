SELECT order_id, product_id, name
FROM order_items AS oi
INNER JOIN products AS p
  ON oi.product_id = p.product_id;
