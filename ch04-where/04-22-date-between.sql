SELECT *
FROM orders
WHERE date(ordered_at) BETWEEN '2026-04-01' AND '2026-04-30';
