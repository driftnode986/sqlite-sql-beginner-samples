UPDATE products
SET price = (
  SELECT b.price
  FROM products_backup AS b
  WHERE b.product_id = products.product_id
);
