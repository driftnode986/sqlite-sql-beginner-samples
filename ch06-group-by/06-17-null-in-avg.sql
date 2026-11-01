SELECT
  avg(CASE WHEN category = 'フード' THEN price END)
    AS "NULLを除いた平均",
  avg(CASE WHEN category = 'フード' THEN price ELSE 0 END)
    AS "0を入れた平均"
FROM products;
