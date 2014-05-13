DROP TABLE IF EXISTS koopa;

-- Run the follwing command inside /koopa root direcotry:
-- psql -d koopa_db -f schema.sql

CREATE TABLE koopa(
  id serial primary key,
  name varchar(50),
  color text,
  has_shell boolean default true,
  photo_url text
)
