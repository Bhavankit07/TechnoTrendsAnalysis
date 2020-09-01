package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.LoginDAO;
import com.DAO.RegistrationDAO;
import com.VO.LoginVO;
import com.VO.RegistrationVO;

@Controller
public class RegistrationController {

	@Autowired
	RegistrationDAO registrationDAO;
	@Autowired
	LoginDAO loginDAO;
	
	@RequestMapping(value="/register.html",method=RequestMethod.GET)
	public ModelAndView click(@ModelAttribute RegistrationVO registrationVO)
	{
		System.out.println("Yes");
		return new ModelAndView("Admin/register","REGISTER",registrationVO);
	}
	
	@RequestMapping(value="/insertData.html",method=RequestMethod.POST)
	public ModelAndView insertData(@ModelAttribute RegistrationVO registrationVO,@ModelAttribute LoginVO loginVO,HttpServletRequest request)
	{
//		this.loginDAO.insertLogin(registrationVO.getLoginVO());
//		
//		this.registrationDAO.insertRegistration(registrationVO);
		loginVO.setEmail(registrationVO.getLoginVO().getEmail());
		loginVO.setPassword(registrationVO.getLoginVO().getPassword());
		loginVO.setRole("ROLE_USER");
		loginVO.setEnable(1);
		
		this.loginDAO.insertLogin(loginVO);
		
		registrationVO.setLoginVO(loginVO);
		this.registrationDAO.insertRegistration(registrationVO);
		return new ModelAndView("Admin/login");
	}

	
}
