SELECT name, price
FROM products
WHERE price IN (
  SELECT price FROM products
  WHERE category = 'ドリンク'
);
