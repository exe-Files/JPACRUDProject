package com.skilldistillery.pokemon.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.pokemon.entities.Pokemon;

@Service
@Transactional
public class PokemonDAOJpaImpl implements PokemonDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Pokemon findById(int id) {
		return em.find(Pokemon.class, id);
	}

	@Override
	public Pokemon findByName(String name) {
		return em.find(Pokemon.class, name);
	}

	@Override
	public Pokemon update(int id, Pokemon pokemon) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pokemon create(Pokemon pokemon) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pokemon destroy(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
