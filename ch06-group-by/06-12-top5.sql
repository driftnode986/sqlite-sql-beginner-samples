SELECT product_id, sum(quantity) AS "売れた数"
FROM order_items
GROUP BY product_id
ORDER BY "売れた数" DESC
LIMIT 5;
