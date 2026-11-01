SELECT
  name,
  format(
    '%,d円',
    CAST(round(price * 1.08) AS INTEGER)
  ) AS "税込み"
FROM products
ORDER BY price DESC;
