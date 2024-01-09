ALTER TABLE products
ADD CONSTRAINT category_id
  FOREIGN KEY (category_id)
  REFERENCES categories(id)