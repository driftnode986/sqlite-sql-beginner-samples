WITH june30_orders AS (
  SELECT order_id
  FROM orders
  WHERE date(ordered_at) = '2026-06-30'
),

june30_items AS (
  SELECT product_id
  FROM order_items
  WHERE order_id IN (SELECT order_id FROM june30_orders)
)

SELECT product_id, name
FROM products
WHERE product_id IN (SELECT product_id FROM june30_items)
ORDER BY product_id ASC;
