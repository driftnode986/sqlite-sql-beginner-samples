WITH monthly AS (
  SELECT
    strftime('%Y-%m', o.ordered_at) AS month,
    sum(p.price * oi.quantity) AS sales
  FROM order_items AS oi
  INNER JOIN orders AS o
    ON oi.order_id = o.order_id
  INNER JOIN products AS p
    ON oi.product_id = p.product_id
  GROUP BY strftime('%Y-%m', o.ordered_at)
)

SELECT
  cur.month AS "月",
  cur.sales AS "売上",
  prev.sales AS "前の月の売上",
  cur.sales - prev.sales AS "差"
FROM monthly AS cur
LEFT JOIN monthly AS prev
  ON prev.month = strftime('%Y-%m', cur.month || '-01', '-1 month')
ORDER BY cur.month ASC;
