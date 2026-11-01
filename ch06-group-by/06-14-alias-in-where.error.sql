SELECT category, count(*) AS "商品の数"
FROM products
WHERE "商品の数" >= 2
GROUP BY category;
