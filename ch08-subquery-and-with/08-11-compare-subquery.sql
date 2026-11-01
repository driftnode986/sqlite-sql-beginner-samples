SELECT product_id, name
FROM products
WHERE
  product_id IN (
    SELECT product_id
    FROM order_items
    WHERE order_id IN (
      SELECT order_id
      FROM orders
      WHERE date(ordered_at) = '2026-06-30'
    )
  )
ORDER BY product_id ASC;
