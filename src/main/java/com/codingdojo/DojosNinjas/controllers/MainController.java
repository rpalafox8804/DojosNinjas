package com.codingdojo.DojosNinjas.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.DojosNinjas.models.Dojo;
import com.codingdojo.DojosNinjas.models.Ninja;
import com.codingdojo.DojosNinjas.services.DojoService;
import com.codingdojo.DojosNinjas.services.NinjaService;
//import com.codingdojo.DojosNinjas.services.NinjaService;

@Controller
public class MainController {
	@Autowired
	NinjaService ninjaService;
	
	@Autowired
	DojoService dojoService;
	
	@GetMapping ("/dojo/new")
	public String addDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "newDojo.jsp";
	}
	@PostMapping ("/dojo/new")
	public String createNewDojo(@Valid @ModelAttribute("dojo") Dojo dojo,  BindingResult result) {
		if(result.hasErrors()) {
			return "newDojo.jsp";
		} else {
			dojoService.createUpdateDojo(dojo);
			return "redirect:/dojo/new";
		}
	}
	@GetMapping ("/ninja/new")
	public String addNinja(@ModelAttribute("ninja")Ninja ninja, Model model) {
		List<Dojo> allDojos = dojoService.allDojos();
		model.addAttribute("dojos", allDojos);
		return "newNinja.jsp";
	}
	@PostMapping ("/ninja/new")
	public String createNewNinja(@Valid @ModelAttribute("ninja") Ninja ninja,  BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Dojo> allDojos = dojoService.allDojos();
			model.addAttribute("dojos", allDojos);
			return "newNinja.jsp";
		} else {
			ninjaService.createUpdateNinja(ninja);
			return "redirect:/ninja/new";
		}
	}
	@GetMapping ("/dojos/{id}")
	public String findNinjasInDojo(@PathVariable("id") Long id, Model model) {
		model.addAttribute("dojo", dojoService.findDojo(id));
		System.out.println(model);
		
		return "dojoPage.jsp";
	}
}
