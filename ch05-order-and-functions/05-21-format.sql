SELECT
  name,
  format('%03d', product_id) AS "番号",
  format('%,d円', price) AS "価格"
FROM products;
