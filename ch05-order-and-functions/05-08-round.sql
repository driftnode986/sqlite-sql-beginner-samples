SELECT
  name,
  price * 1.08 AS "丸める前",
  round(price * 1.08) AS "丸めた後"
FROM products;
