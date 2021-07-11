package com.skilldistillery.pokemon.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.pokemon.entities.Pokemon;

@Service  //Allows Spring Boot to create the DAO bean and inject into Controller using @Autowired.
@Transactional ////Handles transaction.begin/commit automatically
public class PokemonDAOJpaImpl implements PokemonDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Pokemon findById(int id) {
		return em.find(Pokemon.class, id);
	}

	@Override
	public Pokemon findByName(String name) {
		String queryString = "SELECT p FROM Pokemon p WHERE p.name = :name";
		Pokemon result;
		try {
			result = em.createQuery(queryString, Pokemon.class)
							   .setParameter("name", name)
							   .getSingleResult(); //be careful with this, throws an exception if no result
		}catch (Exception e) {
			System.out.println("No results found based on that query");
			result = null;
		}
//		return em.find(Pokemon.class, name);
		return result;
	}
	
	@Override
	public Pokemon create(Pokemon pokemon) {
		em.persist(pokemon);
		em.flush(); //explicit flush
		//if any of the above statements throw an exception
		//it will automatically rollback
		return pokemon; //now returns with an incremented id
	}

	@Override
	public Pokemon update(int id, Pokemon pokemon) {
		Pokemon updatePkmn = em.find(Pokemon.class, id);
		System.out.println("Before update: " + updatePkmn);
		updatePkmn.setName(pokemon.getName());
		updatePkmn.setType1(pokemon.getType1());
		updatePkmn.setType2(pokemon.getType2());
		em.persist(pokemon); //this may need to change, still unclear
		em.flush(); // explicit flush, good practice
		System.out.println("After update: " + updatePkmn);
		return updatePkmn;
	}

	@Override
	public boolean destroy(int id) {
		//the actor we're going to find
		Pokemon poorPkmn = em.find(Pokemon.class, id);
		em.remove(poorPkmn);
		boolean successfulKickOut;
		successfulKickOut= !em.contains(poorPkmn);
		return successfulKickOut;
	}

}
