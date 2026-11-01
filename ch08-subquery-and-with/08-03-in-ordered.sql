SELECT product_id, name
FROM products
WHERE product_id IN (SELECT product_id FROM order_items);
