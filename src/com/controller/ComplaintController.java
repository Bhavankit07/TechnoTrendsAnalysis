package com.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.*;
import com.VO.*;

@Controller
public class ComplaintController {
	
	@Autowired
	ComplaintDAO complaintDAO;
	
	@RequestMapping(value="/loadComplaint.html",method=RequestMethod.GET)
	public ModelAndView loadcomplaint(@ModelAttribute ComplaintVO complaintVO){
		return new ModelAndView("User/complaint","data",complaintVO);
	}
	
	@RequestMapping(value="/insertComplaint.html",method=RequestMethod.POST)
	public ModelAndView insertComplain(HttpSession session,@ModelAttribute ComplaintVO complainVO,LoginVO loginVO){
		
		int id=(int)session.getAttribute("loginId");
		loginVO.setLoginId(id);
		Date d=new Date();
		DateFormat date=new SimpleDateFormat("dd/MM/YYYY");
		DateFormat time=new SimpleDateFormat("HH:mm:ss");
		complainVO.setComplainDate(date.format(d));
		  complainVO.setComplainTime(time.format(d));
		complainVO.setLoginVO(loginVO);
		complainVO.setComplainStatus("Pending");
		this.complaintDAO.insert(complainVO);
		return new ModelAndView("User/index");
	}

	@RequestMapping(value="/viewComplaint.html",method=RequestMethod.GET)
	public ModelAndView viewcomplaint(@ModelAttribute ComplaintVO complainVO){
		List ls=this.complaintDAO.view();
		return new ModelAndView("Admin/viewComplaint","list",ls);
	}
	
	@RequestMapping(value="/replyComplain.html",method=RequestMethod.GET)
	public ModelAndView replycomplain(@RequestParam("id") int i, ComplaintVO complaintVO)
	{
		
	     complaintVO.setComplainId(i);
	     List ls=this.complaintDAO.reply(complaintVO);
	 		return new ModelAndView("Admin/replyComplain","list",(ComplaintVO)ls.get(0)).addObject("complain",ls);
	}
	
	@RequestMapping(value="/insertReply.html",method=RequestMethod.POST)
	public ModelAndView insertReply(@ModelAttribute ComplaintVO complainVO){
		complainVO.setComplainStatus("Checked");
		this.complaintDAO.insertReply(complainVO);
		return new ModelAndView("redirect:viewComplaint.html");
	}
	@RequestMapping(value="/userViewComlaint.html",method=RequestMethod.GET)
	  public ModelAndView userview(HttpSession session,@ModelAttribute ComplaintVO complainVO,LoginVO loginVO){
		int id=(int)session.getAttribute("loginId");
		 loginVO.setLoginId(id);
		List ls= this.complaintDAO.viewuser(id);
		return new ModelAndView("User/viewComplaint","list",ls);
		
	}
}
