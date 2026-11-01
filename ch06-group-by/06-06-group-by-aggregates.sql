SELECT
  category,
  count(*) AS "商品の数",
  avg(price) AS "平均の価格",
  max(price) AS "最も高い価格",
  min(price) AS "最も安い価格"
FROM products
GROUP BY category;
