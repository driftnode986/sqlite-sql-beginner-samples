CREATE VIEW sales_monthly AS
SELECT
  substr(sale_date, 1, 7) AS month,
  count(*) AS row_count,
  sum(quantity) AS quantity,
  sum(amount) AS amount
FROM sales
GROUP BY substr(sale_date, 1, 7);
