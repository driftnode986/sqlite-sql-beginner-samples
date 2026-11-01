SELECT
  name,
  price,
  typeof(name) AS "nameの種類",
  typeof(price) AS "priceの種類"
FROM products
LIMIT 3;
