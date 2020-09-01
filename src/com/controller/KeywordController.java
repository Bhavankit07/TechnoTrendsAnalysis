package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.DAO.KeywordDAO;
import com.VO.CategoryVO;
import com.VO.KeywordVO;


@Controller
public class KeywordController {
	
	@Autowired
	KeywordDAO keywordDAO;
	
	@RequestMapping(value="/addKeyword.html",method = RequestMethod.GET)
	public ModelAndView registerPage(@ModelAttribute KeywordVO keywordVO){
		return new ModelAndView("Admin/addKeyword","KEYWORD",keywordVO);
	}
	
	@RequestMapping(value="/insertKeyword.html", method = RequestMethod.POST)
	public ModelAndView insertKeyword(@ModelAttribute KeywordVO keywordVO,HttpServletRequest request)
	{
		this.keywordDAO.insert(keywordVO);
		return new ModelAndView("redirect:addKeyword.html");
	}

	@RequestMapping(value="/viewKeyword.html",method = RequestMethod.GET)
	public ModelAndView search()
	{
		List ls=keywordDAO.search();
		return new ModelAndView("Admin/viewKeyword","keywordList",ls);
	}
	
	@RequestMapping(value="/keywordDelete.html",method = RequestMethod.GET)
	public ModelAndView delete(@RequestParam("x")int keywordId,KeywordVO keywordVO)
	{
		keywordVO.setKeywordId(keywordId);
		System.out.println("delete");
		this.keywordDAO.delete(keywordVO);
		return new ModelAndView("redirect:viewKeyword.html");
	}
	
	@RequestMapping(value="/keywordEdit.html",method = RequestMethod.GET)
	public ModelAndView edit(@RequestParam("x")int keywordId,KeywordVO keywordVO)
	{
		keywordVO.setKeywordId(keywordId);
		List ls=this.keywordDAO.edit(keywordVO);
		System.out.println("List size"+ls.size());
		this.keywordDAO.update(keywordVO);
		return new ModelAndView("Admin/editKeyword","UKEYWORD",(KeywordVO) ls.get(0));
	}
	
	@RequestMapping(value="/updateKeyword.html",method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute KeywordVO keywordVO)
	{
		this.keywordDAO.update(keywordVO);
		return new ModelAndView("redirect:viewKeyword.html");
	}
}
