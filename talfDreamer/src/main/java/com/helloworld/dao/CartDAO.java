package com.helloworld.dao;

import java.util.List;

import com.helloworld.model.CartItem;

public interface CartDAO {

public void addToCart(CartItem cartItem);
	
	public String displayCart(int userId);
	
	public List<CartItem> displayCartByList(int userId);
	
	public void deteleFromCart(int cartItemId);
	
	public void updateCart(int cartItemId, double cartTotalAmount, int cartItemQuantity);
}
