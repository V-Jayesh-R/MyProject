package com.helloworld.dao;

import java.util.List;

import com.helloworld.model.CartItems;

public interface CartItemDAO {


	public void addToCart(CartItems	cartItem);
	public List<CartItems> getCartListByUserId(int userId);

	public String listCartItemByJson(int userId);
}
