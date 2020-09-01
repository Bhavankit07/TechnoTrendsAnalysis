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

import com.DAO.DictionaryDAO;
import com.VO.CategoryVO;
import com.VO.DictionaryVO;

@Controller
public class DictionaryController {
	
	@Autowired
	DictionaryDAO dictionaryDAO;
	
	@RequestMapping(value="/addDictionary.html",method = RequestMethod.GET)
	public ModelAndView registerPage(@ModelAttribute DictionaryVO dictionaryVO){
		return new ModelAndView("Admin/addDictionary","DICTIONARY",dictionaryVO);
	}

	@RequestMapping(value="/insertDictionary.html", method = RequestMethod.POST)
	public ModelAndView insertDictionary(@ModelAttribute DictionaryVO dictionaryVO,HttpServletRequest request)
	{
		this.dictionaryDAO.insert(dictionaryVO);
		return new ModelAndView("redirect:addDictionary.html");
	}
	
	@RequestMapping(value="/viewDictionary.html",method = RequestMethod.GET)
	public ModelAndView search()
	{
		List ls=dictionaryDAO.search();
		return new ModelAndView("Admin/viewDictionary","dictionaryList",ls);
	}

	@RequestMapping(value="/dictionaryDelete.html",method = RequestMethod.GET)
	public ModelAndView delete(@RequestParam("x")int dictionaryId,DictionaryVO dictionaryVO)
	{
		dictionaryVO.setDictionaryId(dictionaryId);
		System.out.println("delete");
		this.dictionaryDAO.delete(dictionaryVO);
		return new ModelAndView("redirect:viewDictionary.html");
	}
	
	@RequestMapping(value="/dictionaryEdit.html",method = RequestMethod.GET)
	public ModelAndView edit(@RequestParam("x")int dictionaryId,DictionaryVO dictionaryVO)
	{
		dictionaryVO.setDictionaryId(dictionaryId);
		List ls=this.dictionaryDAO.edit(dictionaryVO);
		System.out.println("List size"+ls.size());
		this.dictionaryDAO.update(dictionaryVO);
		return new ModelAndView("Admin/editDictionary","UDICTIONARY",(DictionaryVO) ls.get(0));
	}
	
	@RequestMapping(value="/updateDictionary.html",method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute DictionaryVO dictionaryVO)
	{
		this.dictionaryDAO.update(dictionaryVO);
		return new ModelAndView("redirect:viewDictionary.html");
	}
}

