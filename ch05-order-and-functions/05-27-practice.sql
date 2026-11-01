SELECT
  name AS "商品名",
  format('%,d円', price * 110 / 100) AS "税込み価格",
  CASE
    WHEN price >= 600 THEN '高め'
    WHEN price >= 500 THEN '中くらい'
    ELSE '手ごろ'
  END AS "価格帯"
FROM products
ORDER BY price DESC;
