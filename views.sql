CREATE VIEW pokedex_schema.pokemon_treinador_view AS
SELECT pokedex_schema.pokemon.nome   AS pokemon,
       pokedex_schema.treinador.nome AS tipo
FROM pokedex_schema.pokemon
         JOIN
     pokedex_schema.pokemon_treinador PT ON pokedex_schema.pokemon.id = PT.id_pokemon
         JOIN
     pokedex_schema.treinador ON PT.id_treinador = pokedex_schema.treinador.id;

CREATE VIEW pokedex_schema.pokemon_tipos_view AS
SELECT pokedex_schema.pokemon.nome AS pokemon,
       pokedex_schema.tipo.nome    AS tipo
FROM pokedex_schema.pokemon
         JOIN
     pokedex_schema.pokemon_tipo PT ON pokedex_schema.pokemon.id = PT.id_pokemon
         JOIN
     pokedex_schema.tipo ON PT.id_tipo = pokedex_schema.tipo.id;
