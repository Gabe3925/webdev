
CREATE TABLE musicals (
  id serial primary key,
  title varchar(100) not null,
  year integer not null,
  composer varchar(100) not null,
  lyricist varchar(100) not null
);
