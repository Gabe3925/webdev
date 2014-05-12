DROP TABLE IF EXISTS musicals;
DROP TABLE IF EXISTS songs;

CREATE TABLE musicals (
  id serial PRIMARY KEY,
  title varchar(100) NOT NULL,
  year integer NOT NULL,
  composer varchar(100) NOT NULL,
  lyricist varchar(100) NOT NULL
);

CREATE TABLE songs (
  id serial PRIMARY KEY,
  title varchar(100) NOT NULL,
  musical_id integer REFERENCES musicals(id)
);

CREATE TABLE characters (
  id serial PRIMARY KEY,
  name varchar(100) NOT NULL
);

CREATE TABLE performances (
  id serial PRIMARY KEY,
  song_id integer REFERENCES songs(id),
  character_id integer REFERENCES characters(id)
);
