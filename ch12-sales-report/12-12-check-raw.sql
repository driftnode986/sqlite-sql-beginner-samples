SELECT
  count(*) AS "行の数",
  sum(CAST(replace(amount, ',', '') AS INTEGER)) AS "売上"
FROM sales_2025_06;
