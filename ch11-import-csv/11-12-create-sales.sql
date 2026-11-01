CREATE TABLE sales (
  sale_date TEXT NOT NULL,
  store TEXT NOT NULL,
  product TEXT NOT NULL,
  quantity INTEGER NOT NULL,
  amount INTEGER NOT NULL,
  member_id INTEGER
) STRICT;
