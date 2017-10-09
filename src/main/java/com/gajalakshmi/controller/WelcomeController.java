package com.gajalakshmi.controller;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gajalakshmi.model.Contact;
import com.gajalakshmi.utility.SendMail;

@Controller
public class WelcomeController {
	/*@Autowired
	SendMail sendMail;*/

	@RequestMapping("/")
	public String hello(Model model){
		model.addAttribute("message", "Gunda");
		System.out.println("called controller");
		return "index";
	}
	
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public String home(Model model){
		return "index";
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
		Contact contact= new Contact();
		model.addAttribute("contact", contact);
		return "contact";
	}
	
	/*@RequestMapping(value="/sendEmail",method=RequestMethod.POST)
	public @ResponseBody String sendEmail(@RequestBody Contact contact){
		System.out.println("contact : "+ contact.getEmail());
		return "contact";
	}*/
	
	@RequestMapping(value="/sendEmail",method=RequestMethod.POST)
	public String sendEmail(@ModelAttribute("contact")Contact contact, 
		      BindingResult result, ModelMap model){

		SendMail sendMail=new SendMail();
		sendMail.sendMail(contact);
		return "contact";
	}
}
