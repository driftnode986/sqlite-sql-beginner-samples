SELECT name, price
FROM products
WHERE price = (
  SELECT price FROM products
  WHERE category = 'ドリンク'
);
