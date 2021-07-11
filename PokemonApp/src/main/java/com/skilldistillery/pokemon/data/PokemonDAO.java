package com.skilldistillery.pokemon.data;

import com.skilldistillery.pokemon.entities.Pokemon;

public interface PokemonDAO {
	
	Pokemon findById(int id);
	
	Pokemon findByName(String name);
	
	Pokemon update(int id, Pokemon pokemon);
	
	Pokemon create(Pokemon pokemon);
	
	Pokemon destroy(int id);

}
