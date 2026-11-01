SELECT
  name,
  price,
  price / 100 AS "整数で割る",
  price / 100.0 AS "小数で割る"
FROM products;
