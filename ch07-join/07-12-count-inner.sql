SELECT
  count(*) AS "行の数",
  count(oi.order_id) AS "明細のある行"
FROM products AS p
INNER JOIN order_items AS oi
  ON p.product_id = oi.product_id;
