package com.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class catComputer {
	
	@RequestMapping(value="/computer.html",method = RequestMethod.GET)
	public ModelAndView registerPage(){
		return new ModelAndView("User/index");
	}
}
