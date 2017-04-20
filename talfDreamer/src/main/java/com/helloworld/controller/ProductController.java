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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.helloworld.model.Product;
import com.helloworld.service.BrandService;
import com.helloworld.service.CategoryService;
import com.helloworld.service.ProductService;
import com.helloworld.service.SubCategoryService;
import com.helloworld.service.SupplierService;


@Controller
public class ProductController {

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

	private String Data_Folder = "D:\\NewProject\\talfDreamer\\src\\main\\webapp\\resources\\ProductImages\\";

	@RequestMapping("/productPage")
	public String getProductPage(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("productList", productService.fetchAllProduct());
		model.addAttribute("subCategoryList", subCategoryService.listSubCategory());
		model.addAttribute("categoryList", categoryService.getCategorylist());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("brandList", brandService.fetchAllBrand());

		model.addAttribute("productListByJson", productService.fetchAllProductByJson());
		
		
		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
		model.addAttribute("btnLabel", "Add Product");
		return "product";
	}

	@RequestMapping("/addProduct")
	public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult result,
			@RequestParam("productImage") MultipartFile productImage, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("productList", productService.fetchAllProduct());
			model.addAttribute("subCategoryList", subCategoryService.listSubCategory());
			model.addAttribute("categoryList", categoryService.getCategorylist());
			model.addAttribute("supplierList", supplierService.fetchAllSupplier());
			model.addAttribute("brandList", brandService.fetchAllBrand());
			model.addAttribute("productListByJson", productService.fetchAllProductByJson());
			
			model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
			model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
			model.addAttribute("btnLabel", "Retry");
			return "product";
		}
		else {
			productService.addProduct(product);

			if (!productImage.isEmpty()) {
				try {
					byte[] bytes = productImage.getBytes();

					File directory = new File(Data_Folder + File.separator);
					if (!directory.exists()) {
						directory.mkdirs();
					}

					File imageFile = new File(directory.getAbsolutePath() + File.separator + "productImage-"
							+ product.getProductId() + ".jpg");
					BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(imageFile));
					stream.write(bytes);
					stream.close();
				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("fmessage", "Image Upload Failed.try again");
				}
				model.addAttribute("filemessage", "Image Upload Successful");
			} else {
				model.addAttribute("filemessage", "Image file is required");
			}
		}
		productService.addProduct(product);
		return "redirect:/productPage";
	}
	
	@RequestMapping("/editProduct-{productId}")
	public String editProduct(Model model,@PathVariable("productId") int productId)
	{
		model.addAttribute("product", productService.getProductById(productId));
		
		model.addAttribute("productList", productService.fetchAllProduct());
		model.addAttribute("subCategoryList", subCategoryService.listSubCategory());
		model.addAttribute("categoryList", categoryService.getCategorylist());
		model.addAttribute("supplierList", supplierService.fetchAllSupplier());
		model.addAttribute("brandList", brandService.fetchAllBrand());
		
		model.addAttribute("productListByJson", productService.fetchAllProductByJson());

		model.addAttribute("supplierListByJson", supplierService.fetchAllSupplierByJson());
		model.addAttribute("brandListByJson", brandService.fetchAllBrandByJson());
		model.addAttribute("btnLabel","Edit Product");
		return "product";
	}
	
	@RequestMapping("/deleteProduct-{productId}")
	public String deleteProduct(@PathVariable("productId") int productId)
	{
		productService.deleteProduct(productId);
		return "redirect:/productPage";
	}

	@RequestMapping("/viewProduct-{productId}")
	public String viewProduct(@PathVariable("productId") int productId, Model model)
	{
		Product p = productService.getProductById(productId);
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonView = g.toJson(p);
		model.addAttribute("product", jsonView);
		return "viewproduct";
	}
}