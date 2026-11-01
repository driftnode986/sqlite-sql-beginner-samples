SELECT
  name,
  replace(name, 'コーヒー', '珈琲') AS "置き換えた名前"
FROM products
WHERE name LIKE '%コーヒー%';
