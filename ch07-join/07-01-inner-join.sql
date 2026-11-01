SELECT
  order_items.order_id,
  products.name,
  order_items.quantity
FROM order_items
INNER JOIN products
  ON order_items.product_id = products.product_id;
