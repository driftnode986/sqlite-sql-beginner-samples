SELECT sum(CAST(replace(amount, ',', '') AS INTEGER)) AS "合計"
FROM sales_2025_04;
