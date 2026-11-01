SELECT
  order_id,
  member_id,
  member_id = NULL AS "= NULL",
  member_id IS NULL AS "IS NULL"
FROM orders
LIMIT 6;
