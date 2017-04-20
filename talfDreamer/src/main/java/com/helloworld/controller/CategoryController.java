
	package com.helloworld.controller;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;

	import com.helloworld.model.Category;
	import com.helloworld.service.CategoryService;

	@Controller
	public class CategoryController {

		@Autowired
		CategoryService categoryservice;
		
		@RequestMapping("/category")
		public String displayCategoryForm(Model model) {		
			model.addAttribute("category", new Category());
			model.addAttribute("categoryList", categoryservice.getCategorylist());
			return "categoryform";
		}

		@RequestMapping("/addcategory")
		public String addCategory(@ModelAttribute("category") Category category) {
			categoryservice.addCategory(category);
			return "redirect:/category";
		}
		
		@RequestMapping("/updatecategory-{categoryId}")
		public String updateCategory(@PathVariable("categoryId") int categoryId,Model model) {
			model.addAttribute("category", categoryservice.getCategoryById(categoryId));
			model.addAttribute("categoryList", categoryservice.getCategorylist());
			return "categoryform";
		}

		@RequestMapping("/deletecategory-{categoryId}")
		public String deleteCategory(@PathVariable("categoryId") int categoryId) {
			categoryservice.deleteCategory(categoryId);;
			return "redirect:/category";
		}


		
		

		
	}

	

