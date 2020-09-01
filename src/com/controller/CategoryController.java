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

import com.DAO.CategoryDAO;
import com.VO.CategoryVO;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping(value="/addCategory.html",method = RequestMethod.GET)
	public ModelAndView registerPage(@ModelAttribute CategoryVO categoryVO){
		return new ModelAndView("Admin/addCategory","CATEGORY",categoryVO);
	}

	@RequestMapping(value="/insertCategory.html", method = RequestMethod.POST)
	public ModelAndView insertCategory(@ModelAttribute CategoryVO categoryVO,HttpServletRequest request)
	{
		this.categoryDAO.insert(categoryVO);
		return new ModelAndView("redirect:addCategory.html");
	}
	
	@RequestMapping(value="/viewCategory.html",method = RequestMethod.GET)
	public ModelAndView search()
	{
		List ls=categoryDAO.search();
		return new ModelAndView("Admin/viewCategory","categoryList",ls);
	}
	
	@RequestMapping(value="/categoryDelete.html",method = RequestMethod.GET)
	public ModelAndView delete(@RequestParam("x")int categoryId,CategoryVO categoryVO)
	{
		categoryVO.setCategoryId(categoryId);
		System.out.println("delete");
		this.categoryDAO.delete(categoryVO);
		return new ModelAndView("redirect:viewCategory.html");
	}
	
	@RequestMapping(value="/categoryEdit.html",method = RequestMethod.GET)
	public ModelAndView edit(@RequestParam("x")int categoryId,CategoryVO categoryVO)
	{
		categoryVO.setCategoryId(categoryId);
		List ls=this.categoryDAO.edit(categoryVO);
		System.out.println("List size"+ls.size());
		this.categoryDAO.update(categoryVO);
		return new ModelAndView("Admin/editCategory","UCATEGORY",(CategoryVO) ls.get(0));
	}
	
	@RequestMapping(value="/updateCategory.html",method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute CategoryVO categoryVO)
	{
		this.categoryDAO.update(categoryVO);
		return new ModelAndView("redirect:viewCategory.html");
	}
}