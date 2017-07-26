DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  poke_type VARCHAR,
  cp INT,
  img_url VARCHAR,
  trainer_id INT
);

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  gender VARCHAR,
  img_url VARCHAR
);
