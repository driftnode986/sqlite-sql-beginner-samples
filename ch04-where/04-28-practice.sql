SELECT *
FROM orders
WHERE
  store_id = 1
  AND ordered_at >= '2026-04-01'
  AND ordered_at < '2026-05-01'
  AND member_id IS NOT NULL;
