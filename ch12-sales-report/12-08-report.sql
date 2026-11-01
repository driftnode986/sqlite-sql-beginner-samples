SELECT
  substr(ordered_at, 1, 7) AS "年月",
  count(DISTINCT order_id) AS "注文の数",
  sum(amount) AS "売上"
FROM order_details
GROUP BY substr(ordered_at, 1, 7)
ORDER BY "年月";

SELECT
  product AS "商品",
  sum(quantity) AS "売れた数",
  sum(amount) AS "売上"
FROM order_details
GROUP BY product
ORDER BY "売上" DESC
LIMIT 5;

SELECT
  strftime('%H', ordered_at) AS "時",
  count(*) AS "注文の数"
FROM orders
GROUP BY strftime('%H', ordered_at)
ORDER BY "時";

SELECT
  store AS "店",
  count(DISTINCT order_id) AS "注文の数",
  sum(amount) AS "売上",
  round(
    sum(amount) * 1.0 / count(DISTINCT order_id), 1
  ) AS "客単価"
FROM order_details
GROUP BY store
ORDER BY "売上" DESC;
