CREATE TABLE countries (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(50) NOT NULL
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(50) NOT NULL,
  dni INTEGER NOT NULL,
  email VARCHAR(30),
  country_id INTEGER NOT NULL,
  
  FOREIGN KEY (country_id) REFERENCES countries(id)
);