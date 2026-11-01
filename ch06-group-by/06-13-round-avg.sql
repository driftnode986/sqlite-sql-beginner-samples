SELECT
  category,
  round(avg(price), 1) AS "平均の価格"
FROM products
GROUP BY category;
