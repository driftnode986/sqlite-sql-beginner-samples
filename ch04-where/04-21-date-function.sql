SELECT
  date('2026-04-30 13:18') AS "日付だけ",
  date('2026-04-01', '+1 month') AS "1か月後",
  date('2026-04-01', '+1 month', '-1 day') AS "月末";
