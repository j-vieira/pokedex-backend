CREATE OR REPLACE FUNCTION incrementar_quantidade_de_pokemons_do_treinador()
    RETURNS TRIGGER AS
$$
BEGIN
    RAISE NOTICE 'Aumentando a quantidade de pokemons do treinador: %', NEW.id_treinador;

    UPDATE pokedex.pokedex_schema.treinador
    SET quantidade_de_pokemons = quantidade_de_pokemons + 1
    WHERE id = NEW.id_treinador;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION decrementar_quantidade_de_pokemons_do_treinador()
    RETURNS TRIGGER AS
$$
BEGIN
    RAISE NOTICE 'Diminuindo a quantidade de pokemons do treinador deletado: %', OLD.id_treinador;

    UPDATE pokedex_schema.treinador
    SET quantidade_de_pokemons = quantidade_de_pokemons - 1
    WHERE id = OLD.id_treinador;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;
