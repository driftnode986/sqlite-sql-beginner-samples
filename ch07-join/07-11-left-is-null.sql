SELECT p.product_id, p.name
FROM products AS p
LEFT JOIN order_items AS oi
  ON p.product_id = oi.product_id
WHERE oi.order_id IS NULL;
