CREATE VIEW sales_by_store AS
SELECT
  store,
  substr(sale_date, 1, 4) AS year,
  count(*) AS row_count,
  sum(amount) AS amount
FROM sales
WHERE substr(sale_date, 6, 2) IN ('04', '05')
GROUP BY store, substr(sale_date, 1, 4);
