package com.helloworld.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.helloworld.dao.ProductDAO;
import com.helloworld.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addProduct(Product product) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(product);		
	}
	@SuppressWarnings("unchecked")
	public List<Product> listProduct() 
	{
		List<Product>listProduct = sessionFactory.getCurrentSession().createQuery("from Product").list();
		return listProduct;
	}

	
	@SuppressWarnings("unchecked")
	public Product getProductByName(String productName)
	{
		List<Product>plist=sessionFactory.getCurrentSession().createQuery("from Product where productName = "+"'"+productName).list();
		return plist.get(0);
	}
	@SuppressWarnings("unchecked")
	public Product getProductById(int productId) 
	{
		String hql="from Product where productId="+productId;
		List<Product> plist = sessionFactory.getCurrentSession().createQuery(hql).list();
		return plist.get(0);		
	}
	public void deleteProduct(int productId)
	{
		Product p=new Product();
		p.setProductId(productId);
		sessionFactory.getCurrentSession().delete(p);
	}
	@SuppressWarnings("unchecked")
	public String listProductByJson() 
	{

		List<Product> productlist = sessionFactory.getCurrentSession().createQuery("from Product").list();
		Gson g= new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String listProductByJson=g.toJson(productlist);
		return listProductByJson;
	}
}