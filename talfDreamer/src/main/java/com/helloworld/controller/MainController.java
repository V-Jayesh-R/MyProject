package com.helloworld.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.helloworld.service.CategoryService;
import com.helloworld.service.SubCategoryService;

@Controller
public class MainController {
	
	@Autowired
	CategoryService categoryService;
	@Autowired
	SubCategoryService subCategoryService;
	
	@RequestMapping("/")
	public String getHome(Model model) {
		model.addAttribute("categorylist",categoryService.getCategorylist());
		model.addAttribute("subcategorylist",subCategoryService.listSubCategory());
		return "index";
	}
	
	@RequestMapping("/dummy")
	public String getDemo() {
		
		return "dummy";
	}
	
	@RequestMapping("/header")
	public String getHeader() {
		
		return "header";
	}
	
	@RequestMapping("/index")
	public String getIndexHome() {
		
		return "index";
	}
	
	@RequestMapping("/productlist")
	public String getProduct() {
		
		return "product";
	}
	
}
