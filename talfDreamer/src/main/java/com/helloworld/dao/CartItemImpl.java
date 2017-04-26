package com.helloworld.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.helloworld.model.CartItems;

@Repository
public class CartItemImpl implements CartItemDAO {
	@Autowired
	SessionFactory sessionFactory;

	

	@SuppressWarnings("unchecked")
	public List<CartItems> getCartListByUserId(int userId) {
		// TODO Auto-generated method stub
		
		List<CartItems> cartList = sessionFactory.getCurrentSession().createQuery("from CartItem").getResultList();
		
		return cartList;
	}
	
	

	@SuppressWarnings("unchecked")
	public String listCartItemByJson(int userId) {
		// TODO Auto-generated method stub
		List<CartItems> cartList = sessionFactory.getCurrentSession().createQuery("from CartItem where userId = "+userId+" and flag = 'N'").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String clist = g.toJson(cartList);
		return clist;
	}



	public void addToCart(CartItems cartItem) {
		
			sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
			
		}
		
	}

