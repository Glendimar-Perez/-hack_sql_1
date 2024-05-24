INSERT INTO countries (name) VALUES
  ('Mozambique'),
  ('Vaticano'),
  ('Chipre');

INSERT INTO roles (name) VALUES
  ('Admin'),
  ('User'),
  ('Guest');

INSERT INTO taxes (percentage) VALUES
  (10.5),
  (15.0),
  (20.0);

INSERT INTO offers (status) VALUES
  ('Active'),
  ('Inactive'),
  ('Expired');

INSERT INTO discounts (status, percentage) VALUES
  ('Standard', 5.0),
  ('Special', 10.0),
  ('VIP', 15.0);

INSERT INTO payments (type) VALUES
  ('Credit Card'),
  ('PayPal'),
  ('Cash');

INSERT INTO customers (country_id, role_id, name, email, age, password, physical_address) VALUES
  (1, 2, 'Lorem ipsum', 'lorem.ipsum@example.com', 30, 'ds2@rt%34', 'Av. rudent'),
  (2, 3, 'Dolor sit ammet', 'dolorsit@example.com', 25, 'Csd5+/*8', 'asdf'),
  (3, 1, 'Que perdem et raz', 'sumat.d@example.com', 40, 'I8dike878*', 'St. broadway');

INSERT INTO invoice_status (status) VALUES
  ('Paid'),
  ('Pending'),
  ('Cancelled');

INSERT INTO products (discount_id, offer_id, tax_id, name, details, minimum_stock, maximum_stock, current_stock, price, price_with_tax) VALUES
  (1, 1, 1, 'Paper airplane', 'The best you can get', 1, 1000, 30, 53.99, 62.62),
  (2, 2, 2, 'Water pump', 'Water pump for pools', 1, 1000, 28, 79.99, 92.78),
  (3, 3, 3, 'Uno', 'The uno game gold-made', 1, 1500, 7, 154.99, 179.78);

INSERT INTO product_customers (product_id, customer_id) VALUES
  (1, 1),
  (2, 2),
  (3, 3);

INSERT INTO invoices (customer_id, payment_id, invoice_status_id, date, total_to_pay) VALUES
  (1, 1, 1, '2024-05-19', 21.59),
  (2, 2, 2, '2024-05-19', 32.99),
  (3, 3, 1, '2024-05-19', 15.74);

INSERT INTO orders (invoice_id, product_id, detail, amount, price) VALUES
  (1, 1, 'Order 1', 1, 59.68),
  (2, 2, 'Order 2', 1, 459.00),
  (3, 3, 'Order 3', 1, 1.99);


DELETE FROM users WHERE id = (SELECT id FROM users ORDER BY id DESC LIMIT 1);

UPDATE users SET name = 'nombre nuevo', email = 'nuevo@gmail.com', dni = 0002145 WHERE id = (SELECT id FROM users ORDER BY id DESC LIMIT 1);

UPDATE taxes SET percentage = percentage * 1.16;

UPDATE products SET price = price * 1.16, price_with_tax = price_with_tax * 1.16;
