SELECT
  p.name,
  b.price AS "前の価格",
  p.price AS "新しい価格"
FROM products AS p
INNER JOIN products_backup AS b ON p.product_id = b.product_id
WHERE p.category = 'フード';
