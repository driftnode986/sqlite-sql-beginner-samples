SELECT p.name
FROM products AS p
WHERE NOT EXISTS (
  SELECT *
  FROM order_items AS oi
  WHERE oi.product_id = p.product_id
);
