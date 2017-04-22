package com.helloworld.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.helloworld.model.Brand;
import com.helloworld.model.Category;
import com.helloworld.model.Product;
import com.helloworld.model.SubCategory;
import com.helloworld.model.Supplier;
import com.helloworld.service.BrandService;
import com.helloworld.service.CategoryService;
import com.helloworld.service.ProductService;
import com.helloworld.service.SubCategoryService;
import com.helloworld.service.SupplierService;



@Controller
public class ProductController 
{
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubCategoryService subCategoryService;
	@Autowired
	private SupplierService supplierService;
	@Autowired
	private BrandService brandService;
	
	@RequestMapping("/product")
	public String getProduct(Model model) 
	{
		model.addAttribute("product",new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("subcategory", new SubCategory());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("brand", new Brand());
		
		
		
		model.addAttribute("productList",productService.listProduct());
		model.addAttribute("categoryList",categoryService.getCategorylist());
		model.addAttribute("subCategoryList",subCategoryService.listSubCategory());
		model.addAttribute("supplierList",supplierService.listSupplier());
		model.addAttribute("brandList",brandService.listBrand());
		
		return "product";
	}
	
	@RequestMapping("/addproduct")
	public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model)  
	{
		if(result.hasErrors())
		{
			model.addAttribute("subCategoryList", subCategoryService.listSubCategory());
			model.addAttribute("categoryList", categoryService.getCategorylist());
			model.addAttribute("supplierList", supplierService.listSupplier());
			model.addAttribute("brandList", brandService.listBrand());
			return "product";
		}
	
		productService.addProduct(product);
		
			
		//Multipart File Upload
		String path="C:\\Users\\Jayesh\\workspace\\talfDreamer\\src\\main\\resources\\ProductImages\\productimage\\";
	try{
		path = path+""+product.getProductId()+".jpg";
		System.out.println("Image Path is:"+path);
	}
	catch(Exception e)
	{
		
		System.out.println("Image Path is invalid");
	}
	
			
		
		
		try
		{
		File f = new File(path);
		MultipartFile m = product.getProductImg();
		byte[] b =  m.getBytes();
		FileOutputStream fos = new FileOutputStream(f);
		BufferedOutputStream bos = new BufferedOutputStream(fos);
		bos.write(b);
		bos.close();
		}
				catch (Exception e)
				{
					e.getMessage();
					
				}
		
		return "redirect:/product";
		}
	
	@RequestMapping(value="/viewproduct-{productId}", method=RequestMethod.GET)
	public String viewProduct (@PathVariable("productId") int productId,Model model)
	{
		Product p = productService.getProductById(productId);
		Gson e = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String productData = e.toJson(p);
		model.addAttribute("productData", productData);
		return "ViewProduct";
	}
	
	@RequestMapping(value="/editproduct-{productId}", method=RequestMethod.GET)
	public String editProduct (@PathVariable("productId") int productId,Model model)
	{
		Product product=productService.getProductById(productId);
		System.out.println("id is:"+product.getProductId());
		model.addAttribute("product", product);
		model.addAttribute("productList",productService.listProduct());
		model.addAttribute("supplierList",supplierService.listSupplier());
		model.addAttribute("brandList",brandService.listBrand());
		model.addAttribute("subCategoryList",subCategoryService.listSubCategory());
		model.addAttribute("categoryList",categoryService.getCategorylist());
		return "product";
	}
	@RequestMapping("/deleteproduct-{productId}")
	public String deleteProduct(@PathVariable("productId") int productId)
	{
		productService.deleteProduct(productId);
		return "redirect:/product";
	}
}
