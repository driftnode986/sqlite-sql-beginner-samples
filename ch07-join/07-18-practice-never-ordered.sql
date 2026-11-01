SELECT p.name, p.category, p.price
FROM products AS p
LEFT JOIN order_items AS oi
  ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;
