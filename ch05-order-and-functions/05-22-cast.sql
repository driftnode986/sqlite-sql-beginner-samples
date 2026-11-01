SELECT
  typeof('550') AS "変換の前",
  typeof(CAST('550' AS INTEGER)) AS "変換の後",
  '1000' >= '500' AS "文字列で比べる",
  CAST('1000' AS INTEGER) >= 500 AS "数にして比べる";
