SELECT category, count(*) AS "商品の数"
FROM products
WHERE price >= 500
GROUP BY category
HAVING count(*) >= 2
ORDER BY "商品の数" DESC;
