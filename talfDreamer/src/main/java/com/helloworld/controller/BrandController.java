package com.helloworld.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.helloworld.model.Brand;
import com.helloworld.model.SubCategory;

import com.helloworld.service.BrandService;

import com.helloworld.service.SubCategoryService;






@Controller
public class BrandController {

	
	@Autowired
	private BrandService brandservice;

	@Autowired
	private SubCategoryService subcategoryService;
	
	@RequestMapping("/brand")
	public String getBrand(Model model) 
	{
		model.addAttribute("brand",new Brand());
		model.addAttribute("subcategoryList", subcategoryService.listSubCategory());
		model.addAttribute("brandList",brandservice.listBrand());
		return "brand";
	}
	
	@RequestMapping("/addbrand")
	public String addSubCatgory(Model model,@ModelAttribute("brand") Brand brand) 
	{
		
	brandservice.addBrand(brand);
		return "redirect:/brand";
	}
	@RequestMapping(value="/editbrand-{brandId}", method= RequestMethod.GET)
	public String editbrand(@PathVariable("brandId") int brandId,Model model)
	{
		Brand brand=brandservice.getBrandById(brandId);
		System.out.println("Id is:"+ brand.getBrandId());
		/*System.out.println("Name is:"+brand.getbrandName());
		session.setAttribute("brandId", brand.getbrandId());*/
		model.addAttribute("brand", brand);
		model.addAttribute("brandList",brandservice.listBrand());
		model.addAttribute("subcategoryList",subcategoryService.listSubCategory());
		return"brandform";
	}
	@RequestMapping("/deletebrand-{brandId}")
	public String deletebrand(@PathVariable("brandId") int brandId)
	{
		brandservice.deleteBrand(brandId);
		return"redirect:/brand";
	}
}
