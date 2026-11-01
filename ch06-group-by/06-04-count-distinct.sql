SELECT
  count(member_id) AS "会員の注文の数",
  count(DISTINCT member_id) AS "会員の人数"
FROM orders;
