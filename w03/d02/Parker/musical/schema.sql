DROP TABLE IF EXISTS musicals;
DROP TABLE IF EXISTS songs;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS performances;

CREATE TABLE musicals (
  id serial primary key,
  title varchar(100) NOT NULL,
  year integer NOT NULL,
  composer varchar(100) NOT NULL,
  lyricist varchar(100) NOT NULL
);

CREATE TABLE songs (
  id serial primary key,
  title varchar(100) NOT NULL,
  musical_id integer references musicals(id)
);

CREATE TABLE characters (
	id serial primary key,
	name varchar(100) NOT NULL
);

CREATE TABLE performances (
	id serial primary key,
	character_id integer references character_id
);