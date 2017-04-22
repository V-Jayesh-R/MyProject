package com.helloworld.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.helloworld.model.Category;
import com.helloworld.model.SubCategory;
import com.helloworld.service.CategoryService;
import com.helloworld.service.SubCategoryService;


@Controller
public class SubCategoryController 
{
	@Autowired
	private SubCategoryService subcategoryservice;

	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/subcategory")
	public String getSubCategory(Model model) 
	{
		model.addAttribute("subCategory",new SubCategory());
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryService.getCategorylist());
		model.addAttribute("subCategoryList",subcategoryservice.listSubCategory());
		return "subcategoryform";
	}
	
	@RequestMapping("/addsubcategory")
	public String addSubCatgory(Model model,@ModelAttribute("subCategory") SubCategory subCategory) 
	{
		
	subcategoryservice.addSubCategory(subCategory);
		return "redirect:/subcategory";
	}
	@RequestMapping(value="/editsubcategory-{subCategoryId}", method= RequestMethod.GET)
	public String editSubCategory(@PathVariable("subCategoryId") int subCategoryId,Model model)
	{
		SubCategory subcategory=subcategoryservice.getSubCategoryById(subCategoryId);
		System.out.println("Id is:"+ subcategory.getSubCategoryId());
		/*System.out.println("Name is:"+subcategory.getSubCategoryName());
		session.setAttribute("subCategoryId", subcategory.getSubCategoryId());*/
		model.addAttribute("subCategory", subcategory);
		model.addAttribute("subCategoryList",subcategoryservice.listSubCategory());
		model.addAttribute("categoryList",categoryService.getCategorylist());
		return"subcategoryform";
	}
	@RequestMapping("/deletesubcategory-{subCategoryId}")
	public String deleteSubCategory(@PathVariable("subCategoryId") int subCategoryId)
	{
		subcategoryservice.deleteSubCategory(subCategoryId);
		return"redirect:/subcategory";
	}
}