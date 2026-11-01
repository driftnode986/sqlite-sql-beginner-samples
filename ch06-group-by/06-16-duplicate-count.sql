SELECT
  count(*) AS "明細の行の数",
  count(DISTINCT order_id) AS "注文の数"
FROM order_items;
