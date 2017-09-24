package com.gajalakshmi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WelcomeController {

	@RequestMapping("/")
	public String hello(Model model){
		model.addAttribute("message", "Gunda");
		System.out.println("called controller");
		return "index";
	}
	
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public String home(Model model){
		return "products";
	}
	
	@RequestMapping(value="/products",method=RequestMethod.GET)
	public String products(Model model){
		return "products";
	}
	
	@RequestMapping(value="/locate",method=RequestMethod.GET)
	public String locate(Model model){
		return "locate";
	}
	
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public String contact(Model model){
		return "contact";
	}
}
