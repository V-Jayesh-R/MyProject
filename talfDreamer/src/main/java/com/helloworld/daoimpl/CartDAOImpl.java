package com.helloworld.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.helloworld.dao.CartDAO;
import com.helloworld.model.CartItem;

@Repository
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SessionFactory sessionfactory;

	public void addToCart(CartItem cartItems) {

		sessionfactory.getCurrentSession().saveOrUpdate(cartItems);
	}

	public String displayCart(int userId) {

		List<CartItem> getList = sessionfactory.getCurrentSession().createQuery("from CartItem where userId = " + userId).getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonList = g.toJson(getList);
		return jsonList;
	}
	
	public List<CartItem> displayCartByList(int userId) {
		
		List<CartItem> getList = sessionfactory.getCurrentSession().createQuery("from CartItem where cartItemFlag = 'FALSE' and userId = " + userId).getResultList();
		return getList;
	}

	public void deteleFromCart(int cartItemId) {
		
		CartItem cartItems = new CartItem();
		cartItems.setCartItemId(cartItemId);
		sessionfactory.getCurrentSession().delete(cartItems);
	}
	
	public void updateCart(int cartItemId, double cartTotalAmount, int cartItemQuantity) {
		
		sessionfactory.getCurrentSession().createQuery("UPDATE CartItem SET cartItemQuantity="+cartItemQuantity+",cartTotalAmount="+cartTotalAmount+"where cartItemId="+cartItemId).executeUpdate();
	}
	
	public void updateCartOrders(int userId)
	{
		sessionfactory.getCurrentSession().createQuery("UPDATE CartItem set cartItemFlag='TRUE' where userId="+userId).executeUpdate();
	}
}

