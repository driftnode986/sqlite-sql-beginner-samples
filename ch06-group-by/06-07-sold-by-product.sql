SELECT product_id, sum(quantity) AS "売れた数"
FROM order_items
GROUP BY product_id;
