package com.helloworld.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.helloworld.model.Supplier;
import com.helloworld.service.SupplierService;



@Controller
public class SupplierController {

	@Autowired
	private SupplierService supplierService;

	@RequestMapping("/supplierPage")
	public String getSupplierPage(Model model) {
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("btnLabel", "Add Supplier");
		return "suppliers";
	}

	@RequestMapping("/addSupplier")
	public String addSupplier(@Valid @ModelAttribute("supplier") Supplier supplier, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("supplierList", supplierService.fetchAllSupplier());
			model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
			model.addAttribute("btnLabel", "Retry");
			return "suppliers";
		}
		supplierService.addSupplier(supplier);
		return "redirect:/supplierPage";
	}

	@RequestMapping("/editSupplier-{supplierId}")
	public String editSupplier(Model model, @PathVariable("supplierId") int supplierId) {
		model.addAttribute("supplier", supplierService.getSupplierById(supplierId));
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("btnLabel", "Edit Supplier");
		return "suppliers";
	}

	@RequestMapping("/deleteSupplier-{supplierId}")
	public String deleteSupplier(@PathVariable("supplierId") int supplierId) {
		supplierService.deleteSupplier(supplierId);
		return "redirect:/supplierPage";
	}

}
