SELECT
  sale_date,
  store,
  product,
  quantity,
  amount,
  count(*) AS "件数"
FROM sales_2025_04
GROUP BY sale_date, store, product, quantity, amount, member_id
HAVING count(*) > 1;
