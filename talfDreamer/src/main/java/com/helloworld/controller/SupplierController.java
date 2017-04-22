package com.helloworld.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.helloworld.model.Supplier;
import com.helloworld.service.SupplierService;



@Controller
public class SupplierController 
{
	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping("/supplier")
	public String getSupplier(Model model) 
	{
		model.addAttribute("supplier",new Supplier());
		model.addAttribute("supplierList",supplierService.listSupplier());
		return "supplier";
	}
	@RequestMapping("/addsupplier")
	public String addSupplier(@Valid@ModelAttribute("supplier") Supplier supplier, BindingResult result) 
	{	
		if(result.hasErrors())
		{
			return "supplier";
		}
		supplierService.addSupplier(supplier);
		return "redirect:/supplier";
	}
	@RequestMapping(value="/editsupplier-{supplierId}", method=RequestMethod.GET)
	public String editSupplier(@PathVariable("supplierId")int supplierId,Model model)
	{
		Supplier supplier = supplierService.getSupplierById(supplierId);
		System.out.println("id is:"+ supplier.getSupplierId());
		model.addAttribute("supplier",supplier);
		model.addAttribute("supplierList",supplierService.listSupplier());
		return "supplier";
	}
	@RequestMapping("/deletesupplier-{supplierId}")
	public String deleteSupplier(@PathVariable("supplierId") int supplierId)
	{
		supplierService.deleteSupplier(supplierId);
		return "redirect:/supplier";
	}
}