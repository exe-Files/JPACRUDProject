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
	
	
	@RequestMapping(path={"/", "home.do"})
	public String index(Model model) {
//		model.addAttribute("pokemon", dao.findById(1)); //DEBUGGER
		return "index";
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
	
	@RequestMapping(path = "getPokemon.do", params = "Id")
	public String searchForPkmnById(Integer Id, Model model) {
		model.addAttribute("pokemon", dao.findById(Id));
		model.addAttribute("typeOfSearch", "Id");
		return "result";
		//if else noresult
	}
	
	@RequestMapping(path = "getPokemon.do", params = "Name")
	public String showPokemon(String Name, Model model){
		model.addAttribute("pokemon", dao.findByName(Name));
		model.addAttribute("typeOfSearch", "Name");
		return "result";
		//if else noresult
	}

}
