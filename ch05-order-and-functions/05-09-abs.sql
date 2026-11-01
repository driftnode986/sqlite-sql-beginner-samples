SELECT
  name,
  price,
  price - 600 AS "600円との差",
  abs(price - 600) AS "差の大きさ"
FROM products;
