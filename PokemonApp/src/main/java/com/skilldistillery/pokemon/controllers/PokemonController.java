package com.skilldistillery.pokemon.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.pokemon.data.PokemonDAO;
import com.skilldistillery.pokemon.entities.Pokemon;

@Controller
public class PokemonController {

	@Autowired
	private PokemonDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String index(Model model) {
//		model.addAttribute("pokemon", dao.findById(1)); //DEBUGGER
		return "index";
	}

	@RequestMapping(path = { "/error", "noResults.do" })
	public String noResults(Model model) {
//		model.addAttribute("pokemon", dao.findById(1)); //DEBUGGER
		return "noResults";
	}

	@RequestMapping(path = "userChoice.do")
	public String getSelectedForm(String userOption, Model mv) {
		if (userOption.equals("addPkmn")) {
			return "addPkmnForm";
		} else if (userOption.equals("pkmnID")) {
			mv.addAttribute("typeOfSearch", "Id");
			return "getPkmnForm";
		} else if (userOption.equals("pkmnName")) {
			mv.addAttribute("typeOfSearch", "Name");
			return "getPkmnForm";
		} else if (userOption.equals("showAll")) {
			return "allResults";
		} else {
			return "home";
		}
	}

////	@RequestMapping("getPokemonId.do")
//	@RequestMapping("getPokemon.do")
//	public String showPokemon(Integer Id, Model model){
//		model.addAttribute("pokemon", dao.findById(Id));
//		return "result";
//	}

	// specifying the params in order to overload both methods using the same
	// requestmapping
	@RequestMapping(path = "getPokemon.do", params = "Id")
	public String searchForPkmnById(Integer Id, Model model) {
		Pokemon pkmnSearched = dao.findById(Id);
		if (pkmnSearched != null) {
			model.addAttribute("pokemon", pkmnSearched);
			model.addAttribute("typeOfSearch", "Id");
			return "result";
		} else {
			return "noResults";
		}
	}

	@RequestMapping(path = "getPokemon.do", params = "Name")
	public String searchForPkmnByName(String Name, Model model) {
		Pokemon pkmnSearched = dao.findByName(Name);
		if (pkmnSearched != null) {
			model.addAttribute("pokemon", pkmnSearched);
			model.addAttribute("typeOfSearch", "Name");
			return "result";
		} else {
			return "noResults";
		}
	}

	@RequestMapping("addPkmn.do")
	public String addPkmn(Pokemon pokemon, Model model) throws SQLException {
		model.addAttribute("pokemon", dao.create(pokemon));
		return "addPkmnResponse";
	}

	// Is PRG - Post Redirect Get still necessary with JPA handling the background?
//	@RequestMapping(path = "pkmnAdded.do", method = RequestMethod.GET) // mapping to handle Redirect
//	public String PkmnAdded(Model mv, @ModelAttribute(value = "Pkmn") Pkmn Pkmn) {
//		mv.addAttribute("userPkmn", Pkmn);
//		return "addPkmnResponse";
//	}

	@RequestMapping("deletePkmn.do")
	public String deletePkmn(int pkmnId, Model model) throws SQLException {
		boolean deletedPkmn = false;
		deletedPkmn = dao.destroy(pkmnId);
		model.addAttribute("deletedPkmn", deletedPkmn);
		return "deletePkmnResponse";
	}

	// PRG - Post Redirect Get
//	@RequestMapping(path = "PkmnDeleted.do", method = RequestMethod.GET) // mapping to handle Redirect
//	public String PkmnAdded(Model mv, @ModelAttribute("userSearch") String userSearch,
//			@ModelAttribute("deletedPkmn") Boolean deletedPkmn, @ModelAttribute("typeOfSearch") String typeOfSearch) {
//		mv.addAttribute("userSearch", userSearch);
//		mv.addAttribute("deletedPkmn", deletedPkmn);
//		return "deleteResponsePage";
//	}
//	

	// Takes a selected Pokemon and passes values to the editPkmnForm.jsp to be
	// changed
	@RequestMapping("updatePkmn.do")
	public String updatePkmn(int pkmnId, Model model) throws SQLException {
		Pokemon pkmnToUpdate = dao.findById(pkmnId);
		model.addAttribute("pokemon", pkmnToUpdate);
		return "updatePkmnForm";
	}

	// edit Pkmn form is submitted, command object is created based on the form,
	// parsed for new values, db is updated
	@RequestMapping("updatedPkmn.do")
	public String updatedPkmn(Pokemon pokemon, Model model) throws SQLException {
//		boolean editedPkmnResult = false;
		System.out.println(pokemon.getId());
		Pokemon updatedPkmn = dao.update(pokemon.getId(), pokemon);
		model.addAttribute("pokemon", updatedPkmn);
		return "updatePkmnResponse";
	}

	// // PRG - Post Redirect Get
//	@RequestMapping(path = "PkmnEdited.do", method = RequestMethod.GET) // mapping to handle Redirect
//	public String PkmnEdited(Model mv, @ModelAttribute("editedPkmn") boolean editedPkmn) {
//		mv.addAttribute("editedPkmn", editedPkmn);
//		return "editResponsePage";
//	}

}
