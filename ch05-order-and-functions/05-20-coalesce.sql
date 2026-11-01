SELECT
  order_id,
  member_id,
  coalesce(member_id, '会員でない') AS "会員番号"
FROM orders
ORDER BY order_id
LIMIT 6;
