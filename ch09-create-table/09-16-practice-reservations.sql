CREATE TABLE reservations (
  reservation_id INTEGER PRIMARY KEY,
  store_id INTEGER NOT NULL REFERENCES stores (store_id),
  name TEXT NOT NULL,
  reserved_on TEXT NOT NULL,
  people INTEGER NOT NULL DEFAULT 1
) STRICT;
