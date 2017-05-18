package com.helloworld.dao;

import com.helloworld.model.WishListItems;

public interface WishListDAO {

public void addToWishList(WishListItems wishListItems);
	
	public String displayWishList(int userId);
	
	public void deleteFromWishList(int wishListItemId);
}
