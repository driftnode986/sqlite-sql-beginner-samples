SELECT DISTINCT
  sale_date,
  format(
    '%s-%02d-%02d',
    substr(sale_date, 1, 4),
    CAST(substr(sale_date, 6) AS INTEGER),
    CAST(
      substr(sale_date, instr(substr(sale_date, 6), '/') + 6)
      AS INTEGER
    )
  ) AS "日付"
FROM sales_2025_04
WHERE sale_date IN ('2025/4/1', '2025/4/9', '2025/4/10', '2025/4/30');
