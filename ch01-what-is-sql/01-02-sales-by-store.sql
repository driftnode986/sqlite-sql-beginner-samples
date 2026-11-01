SELECT
  stores.name AS "店舗",
  substr(orders.ordered_at, 1, 7) AS "月",
  sum(products.price * order_items.quantity) AS "売上"
FROM order_items
INNER JOIN orders
  ON order_items.order_id = orders.order_id
INNER JOIN stores
  ON orders.store_id = stores.store_id
INNER JOIN products
  ON order_items.product_id = products.product_id
GROUP BY stores.store_id, substr(orders.ordered_at, 1, 7)
ORDER BY stores.store_id, "月";
