package com.skilldistillery.pokemon.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.pokemon.data.PokemonDAO;

@Controller
public class PokemonController {
	
	@Autowired
	private PokemonDAO dao;
	
	@RequestMapping(path={"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("pokemon", dao.findById(1)); //DEBUG
		return "index";
	}
	
	@RequestMapping("getPokemon.do")
	public String showPokemon(Integer pId, Model model){
		model.addAttribute("pokemon", dao.findById(pId));
		return "result";
	}

}
