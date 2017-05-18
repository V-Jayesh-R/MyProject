package com.helloworld.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.helloworld.daoimpl.ProductDAOImpl;
import com.helloworld.model.Product;


@Service
@Transactional
public class ProductService {
	
	@Autowired
	private ProductDAOImpl productDaoImpl;
	
	public void addProduct(Product Product)
	{
		this.productDaoImpl.addProduct(Product);
	}
	
	public List<Product> listProduct()
	{
		return this.productDaoImpl.listProduct();
	}
	
	public Product getProductById(int productId)
	{
		return this.productDaoImpl.getProductById(productId);
	}
	
	public void getProductByName(String productName)
	{
		this.productDaoImpl.getProductByName(productName);
	}
	
	public Product editProductById(int productId)
	{
		return productDaoImpl.getProductById(productId);
	}
	
	public void deleteProduct(int productId)
	{
		productDaoImpl.deleteProduct(productId);
	}
	
	public String listProductByJson() 
	{
		return productDaoImpl.listProductByJson();
	}
	public String productSearchSubCatJson(int subCategoryId) {
		return productDaoImpl.productSearchSubCatJson(subCategoryId);
	}
	public void updateQuantity(int productId,int productQuantity) {
		productDaoImpl.updateQuantity(productId, productQuantity);
	}
}