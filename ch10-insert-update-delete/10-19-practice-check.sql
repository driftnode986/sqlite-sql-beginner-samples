SELECT count(*) AS "価格が違う商品"
FROM products AS p
INNER JOIN products_backup AS b ON p.product_id = b.product_id
WHERE p.price <> b.price;
