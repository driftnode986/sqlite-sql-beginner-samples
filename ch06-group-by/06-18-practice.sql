SELECT
  store_id,
  strftime('%m', ordered_at) AS "月",
  count(*) AS "注文の数",
  count(member_id) AS "会員の注文の数",
  count(DISTINCT member_id) AS "会員の人数"
FROM orders
GROUP BY store_id, strftime('%m', ordered_at)
ORDER BY store_id ASC, "月" ASC;
