SELECT
  count(*) AS "行数",
  sum(amount) AS "合計",
  min(sale_date) AS "最初の日",
  max(sale_date) AS "最後の日"
FROM sales;
