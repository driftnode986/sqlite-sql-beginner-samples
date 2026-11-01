SELECT
  name,
  category,
  price
FROM products
WHERE
  (category = 'ドリンク' OR category = 'フード')
  AND price >= 600;
