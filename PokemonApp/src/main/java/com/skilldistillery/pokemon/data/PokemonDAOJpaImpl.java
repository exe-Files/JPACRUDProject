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

}
