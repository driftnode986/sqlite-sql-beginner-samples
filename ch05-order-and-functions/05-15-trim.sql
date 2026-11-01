SELECT
  length('  抹茶ラテ  ') AS "前の文字数",
  length(trim('  抹茶ラテ  ')) AS "後の文字数",
  trim('  抹茶ラテ  ') = '抹茶ラテ' AS "比べた結果";
