SELECT p.product_id, p.name
FROM products AS p
WHERE EXISTS (
  SELECT *
  FROM order_items AS oi
  WHERE oi.product_id = p.product_id
);
