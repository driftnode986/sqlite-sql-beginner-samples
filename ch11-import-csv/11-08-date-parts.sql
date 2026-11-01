SELECT DISTINCT
  sale_date,
  substr(sale_date, 1, 4) AS "年",
  CAST(substr(sale_date, 6) AS INTEGER) AS "月",
  instr(substr(sale_date, 6), '/') AS "区切りの位置",
  CAST(
    substr(sale_date, instr(substr(sale_date, 6), '/') + 6)
    AS INTEGER
  ) AS "日"
FROM sales_2025_04
WHERE sale_date IN ('2025/4/1', '2025/4/9', '2025/4/10', '2025/4/30');
