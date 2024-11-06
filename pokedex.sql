DROP TABLE IF EXISTS POKEMON CASCADE;
DROP TABLE IF EXISTS POKEMON_TREINADOR CASCADE;
DROP TABLE IF EXISTS TIPO CASCADE;
DROP TABLE IF EXISTS POKEMON_TIPO CASCADE;
DROP TABLE IF EXISTS TREINADOR CASCADE;

CREATE TABLE POKEMON
(
    id        SERIAL PRIMARY KEY NOT NULL,
    nome      VARCHAR(100)       NOT NULL,
    descricao VARCHAR(100)
);

CREATE TABLE TREINADOR
(
    id                     SERIAL PRIMARY KEY NOT NULL,
    nome                   VARCHAR(100),
    quantidade_de_pokemons INT DEFAULT 0
);

CREATE TABLE POKEMON_TREINADOR
(
    id_pokemon   INT NOT NULL,
    id_treinador INT NOT NULL,
    FOREIGN KEY (id_pokemon) REFERENCES POKEMON (id),
    FOREIGN KEY (id_treinador) REFERENCES TREINADOR (id),
    PRIMARY KEY (id_pokemon, id_treinador)
);

CREATE TABLE TIPO
(
    id   SERIAL PRIMARY KEY NOT NULL,
    nome VARCHAR(100)       NOT NULL UNIQUE
);

CREATE TABLE POKEMON_TIPO
(
    id_pokemon INT NOT NULL,
    id_tipo    INT NOT NULL,
    FOREIGN KEY (id_pokemon) REFERENCES POKEMON (id),
    FOREIGN KEY (id_tipo) REFERENCES TIPO (id),
    PRIMARY KEY (id_pokemon, id_tipo)
);