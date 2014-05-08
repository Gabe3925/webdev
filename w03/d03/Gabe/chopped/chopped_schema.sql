DROP TABLE IF EXISTS rounds CASCADE;
DROP TABLE IF EXISTS chefs CASCADE;
DROP TABLE IF EXISTS judges CASCADE;
DROP TABLE IF EXISTS dishes CASCADE;
DROP TABLE IF EXISTS scores CASCADE;

CREATE TABLE rounds(
id SERIAL PRIMARY KEY NOT NULL,
round_name VARCHAR(50) NOT NULL);

CREATE TABLE judges(
id SERIAL PRIMARY KEY,
judge_name VARCHAR(50) NOT NULL);

CREATE TABLE chefs(
id SERIAL PRIMARY KEY,
chef_name VARCHAR(50) NOT NULL);

CREATE TABLE dishes(
id SERIAL PRIMARY KEY,
description VARCHAR(100) NOT NULL,
which_chef INTEGER REFERENCES chefs(id));

CREATE TABLE scores(
id SERIAL PRIMARY KEY,
which_dish INTEGER REFERENCES dishes(id),
which_judge INTEGER REFERENCES judges(id),
dish_score INTEGER NOT NULL);


