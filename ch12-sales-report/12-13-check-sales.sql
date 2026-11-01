SELECT
  count(*) AS "行の数",
  sum(amount) AS "売上"
FROM sales
WHERE sale_date LIKE '2025-06-%';
