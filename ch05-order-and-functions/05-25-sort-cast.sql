SELECT CAST(product_id AS TEXT) AS "番号", name
FROM products
ORDER BY CAST("番号" AS INTEGER);
