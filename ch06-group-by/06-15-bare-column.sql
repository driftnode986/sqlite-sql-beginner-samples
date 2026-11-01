SELECT category, name, count(*) AS "商品の数"
FROM products
GROUP BY category;
