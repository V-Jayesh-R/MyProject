package com.helloworld.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.helloworld.model.Product;


@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addProduct(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	public List<Product> fetchAllProduct() {
		List<Product> getList = sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		return getList;
	}

	public String fetchAllProductByJson() {
		List<Product> getList = sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(getList);		
		return list;
	}

	public Product getProductById(int productId) {
		List<Product> getList = sessionFactory.getCurrentSession().createQuery("from Product where productId = "+productId).getResultList();
		return getList.get(0);
	}

	public void deleteProduct(int productId) {
		Product p = new Product();
		p.setProductId(productId);
		sessionFactory.getCurrentSession().delete(p);
	}
	
	
}