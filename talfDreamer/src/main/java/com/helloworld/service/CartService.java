package com.helloworld.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helloworld.daoimpl.CartDAOImpl;
import com.helloworld.model.CartItem;

@Service
@Transactional
public class CartService {

	@Autowired
	private CartDAOImpl cartDAOImpl;

	public void addToCart(CartItem cartItems) {

		cartDAOImpl.addToCart(cartItems);
	}

	public String displayCart(int userId) {

		return cartDAOImpl.displayCart(userId);
	}
	
	public List<CartItem> displayCartByList(int userId) {
		
		return cartDAOImpl.displayCartByList(userId);
	}

	public void deleteFromCart(int cartItemId) {

		cartDAOImpl.deteleFromCart(cartItemId);
	}
	
	public void updateCart(int cartItemId, double cartTotalAmount, int cartItemQuantity) {
		
		cartDAOImpl.updateCart(cartItemId, cartTotalAmount, cartItemQuantity);
	}
	
	public void updateCartOrders(int userId) {
		
		cartDAOImpl.updateCartOrders(userId);
	}
}

