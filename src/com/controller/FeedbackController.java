package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.FeedbackDAO;
import com.VO.ComplaintVO;
import com.VO.FeedbackVO;

@Controller
public class FeedbackController {
	@Autowired
	FeedbackDAO feedbackDAO;
	
	@RequestMapping(value="/loadFeedback.html",method=RequestMethod.GET)
	public ModelAndView loadcomplaint(@ModelAttribute FeedbackVO feedbackVO){
		return new ModelAndView("User/feedback","data",feedbackVO);
	}
	
	@RequestMapping(value="/insertFeedback.html",method=RequestMethod.POST)
	public ModelAndView insertfeedback(@ModelAttribute FeedbackVO data){
		
		this.feedbackDAO.insert(data);
		return new ModelAndView("redirect:user.html");
	}
	
	@RequestMapping(value="/viewFeedback.html",method=RequestMethod.GET)
	public ModelAndView viewcomplaint(){
		List ls=new ArrayList();
		ls=feedbackDAO.view();
		return new ModelAndView("Admin/viewFeedback","list",ls);
	}

}
