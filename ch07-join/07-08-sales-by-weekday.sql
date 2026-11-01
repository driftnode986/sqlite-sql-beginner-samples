SELECT
  strftime('%w', o.ordered_at) AS "番号",
  CASE strftime('%w', o.ordered_at)
    WHEN '0' THEN '日'
    WHEN '1' THEN '月'
    WHEN '2' THEN '火'
    WHEN '3' THEN '水'
    WHEN '4' THEN '木'
    WHEN '5' THEN '金'
    ELSE '土'
  END AS "曜日",
  sum(p.price * oi.quantity) AS "売上"
FROM order_items AS oi
INNER JOIN orders AS o
  ON oi.order_id = o.order_id
INNER JOIN products AS p
  ON oi.product_id = p.product_id
GROUP BY strftime('%w', o.ordered_at)
ORDER BY "番号" ASC;
