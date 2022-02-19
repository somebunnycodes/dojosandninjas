package com.somebunnycodes.dojosandninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.somebunnycodes.dojosandninjas.models.Dojo;
import com.somebunnycodes.dojosandninjas.models.Ninja;
import com.somebunnycodes.dojosandninjas.services.DojoService;
import com.somebunnycodes.dojosandninjas.services.NinjaService;

@Controller
public class DojosAndNinjasController {
	
	@Autowired
	private DojoService dojoService;
	@Autowired
	private NinjaService ninjaService;
	
	@GetMapping("/dojos/new")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "newDojo.jsp";
	}
	
	@GetMapping("/ninjas/new")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		model.addAttribute("dojos", dojoService.all());
		return "newNinja.jsp";
	}
	
	@GetMapping("/dojos/{id}")
	public String showDojo(@PathVariable("id") Long id, Model model) {
		System.out.printf("dojo id from url: %s", id);
		Dojo dojo = dojoService.find(id);
		model.addAttribute("dojo", dojo);
		return "showDojo.jsp";
	}
	
	@PostMapping("/dojos")
	public String createDojo(@ModelAttribute("dojo") Dojo dojo) {
		Dojo newDojo = dojoService.create(dojo);
		System.out.printf("new id: %s", dojo.getId());
		return String.format("redirect:/dojos/%s", newDojo.getId());
	}
	
	@PostMapping("/ninjas")
	public String createNinja(@ModelAttribute("ninja") Ninja ninja) {
		Ninja newNinja = ninjaService.create(ninja);
		return "redirect:/dojos/" + ninja.getDojo().getId();
	}
	

}
