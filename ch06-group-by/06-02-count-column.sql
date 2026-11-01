SELECT
  count(*) AS "注文の数",
  count(member_id) AS "会員の注文の数"
FROM orders;
