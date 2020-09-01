package com.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	
	@RequestMapping(value="/index1.html",method = RequestMethod.GET)
	public ModelAndView registerPage( ){
		return new ModelAndView("Admin/index");
	}

}
