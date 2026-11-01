WITH daily AS (
  SELECT
    date(o.ordered_at) AS day,
    sum(p.price * oi.quantity) AS sales
  FROM order_items AS oi
  INNER JOIN orders AS o
    ON oi.order_id = o.order_id
  INNER JOIN products AS p
    ON oi.product_id = p.product_id
  GROUP BY date(o.ordered_at)
)

SELECT day AS "日", sales AS "売上"
FROM daily
WHERE sales > (SELECT avg(sales) FROM daily)
ORDER BY day ASC;
