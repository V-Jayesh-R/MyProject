package com.helloworld.dao;

import java.util.List;

import com.helloworld.model.Product;

public interface ProductDAO {


	public void addProduct(Product product);

	public List<Product>listProduct();
	public String listProductByJson();
	public Product getProductById(int ProductId);
	public void deleteProduct(int ProductId);
	public Product getProductByName(String productName);
	public String productSearchSubCatJson(int subCategoryId);
}
