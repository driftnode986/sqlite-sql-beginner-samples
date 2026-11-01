SELECT
  amount,
  replace(amount, ',', '') AS "カンマなし",
  CAST(replace(amount, ',', '') AS INTEGER) AS "金額"
FROM sales_2025_04
LIMIT 5;
