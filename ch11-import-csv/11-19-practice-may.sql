SELECT
  substr(sale_date, 1, 4) AS "年",
  count(*) AS "行数",
  sum(amount) AS "売上",
  sum(quantity) AS "個数"
FROM sales
WHERE substr(sale_date, 6, 2) = '05'
GROUP BY substr(sale_date, 1, 4)
ORDER BY "年";
