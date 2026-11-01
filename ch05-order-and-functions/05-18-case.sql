SELECT
  name,
  price,
  CASE
    WHEN price >= 600 THEN '高め'
    WHEN price >= 500 THEN '中くらい'
    ELSE '手ごろ'
  END AS "価格帯"
FROM products;
