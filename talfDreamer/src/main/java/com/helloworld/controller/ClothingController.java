package com.helloworld.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.helloworld.service.CategoryService;
import com.helloworld.service.ProductService;
import com.helloworld.service.SubCategoryService;

@Controller
public class ClothingController {
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private SubCategoryService subCategoryService;
	
	@Autowired
	private ProductService productService;
	
	
	
	@RequestMapping("/clothing-{subCategoryID}")
	public String productSearchSubCatJson(@PathVariable("subCategoryId") int subCategoryId,
			Model model) {
		
		model.addAttribute("category", categoryService.getCategorylist());
		model.addAttribute("displayProduct", productService.productSearchSubCatJson(subCategoryId));
		
		return "clothing";
	}
	
}
