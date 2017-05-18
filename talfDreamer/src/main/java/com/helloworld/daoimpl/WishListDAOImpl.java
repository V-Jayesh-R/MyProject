package com.helloworld.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.helloworld.dao.WishListDAO;
import com.helloworld.model.WishListItems;

@Repository
public class WishListDAOImpl implements WishListDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addToWishList(WishListItems wishListItems) {
		
		sessionFactory.getCurrentSession().saveOrUpdate(wishListItems);
	}

	public String displayWishList(int userId) {
		
		List<WishListItems> getList = sessionFactory.getCurrentSession().createQuery("from WishListItems where userId = " +userId).getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String jsonList = g.toJson(getList);
		return jsonList;
	}

	public void deleteFromWishList(int wishListItemId) {
		
		WishListItems wishListItems = new WishListItems();
		wishListItems.setWishListItemId(wishListItemId);
		sessionFactory.getCurrentSession().delete(wishListItems);
	}
	
	
}
