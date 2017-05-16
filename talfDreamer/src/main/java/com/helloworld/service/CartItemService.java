package com.helloworld.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helloworld.daoimpl.CartItemDAOImpl;
import com.helloworld.model.CartItem;

@Service
@Transactional
public class CartItemService  {
	@Autowired
	CartItemDAOImpl cartItemDaoImpl;

	public void addToCart(CartItem cartItem) {
		// TODO Auto-generated method stub
		cartItemDaoImpl.addToCart(cartItem);
	}

	public List<CartItem> getCartListByUserId(int userId) {
		// TODO Auto-generated method stub
		return cartItemDaoImpl.getCartListByUserId(userId);
	}
	
	public String listCartItemByJson(int userId) {
		
		return cartItemDaoImpl .listCartItemByJson(userId);
	}

}