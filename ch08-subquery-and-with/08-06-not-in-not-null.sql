SELECT DISTINCT member_id
FROM orders
WHERE
  member_id NOT IN (
    SELECT member_id
    FROM orders
    WHERE
      ordered_at < '2026-05-01'
      AND member_id IS NOT NULL
  )
ORDER BY member_id ASC;
