package com.helloworld.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helloworld.dao.CartItemImpl;
import com.helloworld.model.CartItems;

@Service
@Transactional
public class CartService 
{
	@Service
	@Transactional
	public class CartItemService  {
		@Autowired
		CartItemImpl cartItemImpl;

		public void addToCart(CartItems cartItem) {
			// TODO Auto-generated method stub
			cartItemImpl.addToCart(cartItem);
		}

		public List<CartItems> getCartListByUserId(int userId) {
			// TODO Auto-generated method stub
			return cartItemImpl.getCartListByUserId(userId);
		}
		
		public String listCartItemByJson(int userId) {
			
			return cartItemImpl .listCartItemByJson(userId);
		}

	}
}
