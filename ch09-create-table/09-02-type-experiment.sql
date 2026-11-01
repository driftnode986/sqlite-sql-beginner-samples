INSERT INTO members VALUES (1, '佐藤 美咲', '2026-04-01', 100);
INSERT INTO members VALUES (2, '鈴木 健', '2026-04-03', '120');
INSERT INTO members VALUES (3, '高橋 結衣', '2026-04-05', '80点');
SELECT name, points, typeof(points) AS "型" FROM members;
