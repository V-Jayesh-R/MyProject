package com.helloworld.controller;




import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.helloworld.model.Category;
import com.helloworld.model.SubCategory;

import com.helloworld.service.CategoryService;
import com.helloworld.service.ProductService;
import com.helloworld.service.SubCategoryService;
import com.helloworld.service.UserService;

@Controller
public class MainController {
	
	@Autowired
	CategoryService categoryService;
	@Autowired
	SubCategoryService subCategoryService;

	@Autowired
	UserService userService;
	@Autowired
	private ProductService productService;
	
	@ModelAttribute("globalCategory")
	public List<Category> GlobalCategory()
	{
		return categoryService.getCategorylist();
	}
	@ModelAttribute("globalSubCategory")
	public List<SubCategory> globalSubCategory()
	{
		return subCategoryService.listSubCategory();
	}
	


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
	
	
	
	@RequestMapping("/404")
	public String pageNotFound()
	{
		return "404";
	}

	@RequestMapping("/aboutus")
	public String getAboutUsPage() {
		return "aboutus";
	}
	
	@RequestMapping("/contactus")
	public String getContactUsPage() {
		return "contactus";
	}
	
	@RequestMapping("/faqs")
	public String getFaqPage() {
		return "faqs";
	}
	
	@RequestMapping("/clothing")
	public String getShopPage(Model model) {
		
		model.addAttribute("display",productService.listProductByJson());
		return "clothing";
	}
   
}
