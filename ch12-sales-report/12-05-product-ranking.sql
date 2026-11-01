SELECT
  product AS "商品",
  sum(quantity) AS "売れた数",
  sum(amount) AS "売上"
FROM order_details
GROUP BY product
ORDER BY "売上" DESC
LIMIT 5;
