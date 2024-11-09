DROP INDEX IF EXISTS indice_pokemon;

INSERT INTO pokemon (nome)
SELECT 'Pokemon ' || generate_series(1, 1000000);

EXPLAIN ANALYZE
SELECT * FROM pokemon WHERE nome = 'Pokemon 9234100';

CREATE INDEX indice_pokemon ON pokedex.pokedex_schema.pokemon USING HASH (id, nome);

EXPLAIN ANALYZE
SELECT * FROM pokemon WHERE nome = 'Pokemon 9634210';
