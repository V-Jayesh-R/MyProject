package com.helloworld.dao;

import java.util.List;

import com.helloworld.model.CartItem;

public interface CartItemDAO {

	public void addToCart(CartItem	cartItem);
	public List<CartItem> getCartListByUserId(int userId);
	//public void deleteCartItem(int cartItemId);
	public String listCartItemByJson(int userId);
}
