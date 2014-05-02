DROP TABLE IF EXISTS receipts;

CREATE TABLE receipts (
  id serial PRIMARY KEY,
  store varchar(50) NOT NULL,
  item varchar(50) NOT NULL,
  number_of_items integer DEFAULT 1,
  price money NOT NULL,
  buy_date date DEFAULT current_date
);

INSERT INTO receipts (store, item, number_of_item, price, buy_date) VALUES
  ('Sears', 'PS4', 1, 400, 'January 21 2014'),
  ('Toys R Us', 'XBox One', 1, 500, 'January 21 2014'),
  ('Toys R Us', 'TMNT Collectors Set', 1, 25, 'January 21 2014'),
  ('Sears', 'Legos Set', 1, 40, 'January 21 2014'),
  ('Borders', 'Blood Meridian', 3, 12, 'March 21 2014'),
  ('Borders', 'Ham on Rye', 2, 12, 'March 21 2014'),
  ('Local Book Store', 'The Last Tycoon', 1, 14, 'March 21 2014'),
  ('Macy''s', 'Button Down Shirt', 3, 28.50, 'March 22 2014'),
  ('JC Penny''s', 'Nikes', 1, 100, 'March 23 2014'),
  ('JC Penny''s', 'tube socks', 3, 28, 'March 23 2014'),
  ('JC Penny''s', 'Reeboks', 1, 60, 'March 23 2014'),
  ('JC Penny''s', 'Umbrella, Red', 1, 10.50, 'March 23 2014'),
  ('JC Penny''s', 'Boxers 3-Pack', 1, 20.75, 'March 23 2014'),
  ('JC Penny''s', 'TMNT bedspread', 1, 20, 'March 23 2014'),
  ('Sears', 'Packers Jersey', 1, 50, 'March 24 2014'),
  ('Toys R Us', 'Life', 1, 25, 'March 24 2014'),
  ('Sears', 'laptop bag', 5, 40.50, 'March 24 2014');
