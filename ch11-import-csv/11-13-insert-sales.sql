INSERT INTO sales
SELECT DISTINCT
  format(
    '%s-%02d-%02d',
    substr(sale_date, 1, 4),
    CAST(substr(sale_date, 6) AS INTEGER),
    CAST(
      substr(sale_date, instr(substr(sale_date, 6), '/') + 6)
      AS INTEGER
    )
  ),
  store,
  product,
  quantity,
  CAST(replace(amount, ',', '') AS INTEGER),
  CAST(member_id AS INTEGER)
FROM sales_2025_04;
