CREATE TABLE musicals (
  id serial PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  year integer NOT NULL,
  composer VARCHAR(100) NOT NULL,
  lyricist VARCHAR(100) NOT NULL
);

