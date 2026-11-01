SELECT
  typeof(amount) AS "種類",
  count(*) AS "行数"
FROM sales_2025_04
GROUP BY typeof(amount);
