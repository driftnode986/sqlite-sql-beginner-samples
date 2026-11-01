WITH product_sales AS (
  SELECT p.name, sum(p.price * oi.quantity) AS sales
  FROM order_items AS oi
  INNER JOIN products AS p
    ON oi.product_id = p.product_id
  GROUP BY p.product_id, p.name
),

sales_avg AS (
  SELECT avg(sales) AS avg_sales
  FROM product_sales
)

SELECT name AS "商品", sales AS "売上"
FROM product_sales
WHERE sales > (SELECT avg_sales FROM sales_avg)
ORDER BY sales DESC;
