CREATE TABLE products_backup (
  product_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  category TEXT NOT NULL,
  price INTEGER NOT NULL
);
INSERT INTO products_backup
SELECT * FROM products;
