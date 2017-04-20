package com.helloworld.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.helloworld.dao.ProductDAOImpl;
import com.helloworld.model.Product;



@Service
@Transactional
public class ProductService {

	@Autowired
	private ProductDAOImpl productDAOImpl;

	public void addProduct(Product product) {
		productDAOImpl.addProduct(product);
	}

	public List<Product> fetchAllProduct() {
		return productDAOImpl.fetchAllProduct();
	}

	public String fetchAllProductByJson() {
		return productDAOImpl.fetchAllProductByJson();
	}

	public Product getProductById(int productId) {
		return productDAOImpl.getProductById(productId);
	}

	public void deleteProduct(int productId) {
		productDAOImpl.deleteProduct(productId);
	}
	
}
