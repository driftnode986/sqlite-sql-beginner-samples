WITH product_sales AS (
  SELECT p.name, sum(p.price * oi.quantity) AS sales
  FROM order_items AS oi
  INNER JOIN products AS p
    ON oi.product_id = p.product_id
  GROUP BY p.product_id, p.name
)

SELECT avg(sales) AS "売上の平均"
FROM product_sales;
