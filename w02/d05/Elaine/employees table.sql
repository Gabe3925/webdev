CREATE TABLE employees (
  id serial PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL,
  title VARCHAR(50) NOT NULL,
  badge_number VARCHAR(15) UNIQUE NOT NULL
);
