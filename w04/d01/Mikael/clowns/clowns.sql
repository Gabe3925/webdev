CREATE TABLE clowns (
  id serial PRIMARY KEY,
  name varchar(100),
  talent varchar(100),
  is_creepy boolean,
  image_url text
)

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "postgres",
  :password => " ",
  :database => "moma_db"
)
