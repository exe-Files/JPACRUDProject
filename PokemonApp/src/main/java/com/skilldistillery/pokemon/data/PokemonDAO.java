package com.skilldistillery.pokemon.data;

import com.skilldistillery.pokemon.entities.Pokemon;

public interface PokemonDAO {
	
	Pokemon findById(int id);
	
	Pokemon findByName(String name);
	
	Pokemon create(Pokemon pokemon);
	
	Pokemon update(int id, Pokemon pokemon);
	
	boolean destroy(int id);

}
