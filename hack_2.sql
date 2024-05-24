INSERT INTO countries (name) VALUES 
  ('Argentina'), 
  ('Colombia'),
  ('Chile');

SELECT * FROM countries;

INSERT INTO users (country_id, email, name, dni) VALUES
  (2, 'foo@foo.com', 'fooziman', 123456789), 
  (3, 'bar@bar.com', 'barziman', 987654321);

SELECT * FROM users;
SELECT users.id, users.name, dni, email, countries.name as country_name FROM users INNER JOIN countries ON country_id = countries.id;