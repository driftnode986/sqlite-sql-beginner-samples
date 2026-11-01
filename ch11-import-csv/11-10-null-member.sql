SELECT
  count(*) AS "行数",
  count(member_id) AS "会員番号のある行",
  count(*) - count(member_id) AS "空の行"
FROM sales_2025_04;
