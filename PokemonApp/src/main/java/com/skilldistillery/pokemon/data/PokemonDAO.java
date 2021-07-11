package com.skilldistillery.pokemon.data;

import com.skilldistillery.pokemon.entities.Pokemon;

public interface PokemonDAO {
	
	Pokemon findById(int id);

}
