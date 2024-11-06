CREATE TRIGGER incrementar_pokemons_do_treinador
    AFTER INSERT ON POKEMON_TREINADOR
    FOR EACH ROW
    EXECUTE FUNCTION incrementar_quantidade_de_pokemons_do_treinador();

CREATE TRIGGER decrementar_pokemons_do_treinador
    AFTER DELETE ON POKEMON_TREINADOR
    FOR EACH ROW
    EXECUTE FUNCTION decrementar_quantidade_de_pokemons_do_treinador();