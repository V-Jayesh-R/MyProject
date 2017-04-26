package com.helloworld.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.helloworld.model.BillingAddress;
import com.helloworld.model.Cart;
import com.helloworld.model.ShippingAddress;
import com.helloworld.model.User;

@Repository
public class UserDAOImpl implements UserDAO 
{	
	@Autowired
	private SessionFactory sessionFactory; 
	
	@Autowired
	public ShippingAddress shippingAddress;
	
	@Autowired
	public BillingAddress billingAddress;
	
	public void addUser(User user) 
	{
		Session session = sessionFactory.getCurrentSession();
		
		user.setEnabled(true);
		user.setRole("ROLE_USER");

		session.saveOrUpdate(user);
		
		Cart cart = new Cart();
		cart.setCartId(user.getUserId()); 
		cart.setUserId(user.getUserId());
		
		session.saveOrUpdate(cart);
		
		session.saveOrUpdate(user);
		
		
	}

	public void updateUser(User user)
	{
		sessionFactory.getCurrentSession().update(user);
	}
	public User getUserId(int userId) {
		List<User> u = sessionFactory.getCurrentSession().createQuery("from User where userId = "+userId).getResultList();
		return u.get(0);
	}

	public User getUserByusername(String username) {
		List<User> userList = sessionFactory.getCurrentSession().createQuery("from User where username = "+"'"+username+"'").getResultList();		
		return userList.get(0);
	}
	
	public String fetchAllUserByJson() {
		List<User> userList = sessionFactory.getCurrentSession().createQuery("from User").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String ulist = g.toJson(userList);
		return ulist;
	}

	public void toggleUserStatus(int userId) 
	{
		User user = getUserId(userId);
		if(user.isEnabled())
		{
			user.setEnabled(false);
		}
		else
		{
			user.setEnabled(true);
		}
		
	}

	public List<User> fetchAllUser() 
	{
		List<User> userList = sessionFactory.getCurrentSession().createQuery("from User").getResultList();
		return userList;
	}

	public void addShippingAddress(ShippingAddress shippingAddress) 
	{
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);
	}

	public void addBillingAddress(BillingAddress billingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);
		
	}

	public BillingAddress getBillingAddressById(int userId) 
	{
		
		List<BillingAddress> billingAddress = sessionFactory.getCurrentSession().createQuery("from BillingAddress where userId ="+userId).getResultList();
		
		if(billingAddress!=null && !billingAddress.isEmpty())
		{
			return billingAddress.get(0);
		}
		else 
		{
			return null;
		}
	}

	public ShippingAddress getShippingAddressById(int userId) 
	{
		
		List<ShippingAddress> shippingAddress = sessionFactory.getCurrentSession().createQuery("from ShippingAddress where userId ="+userId).getResultList();
		
		if(shippingAddress!=null && !shippingAddress.isEmpty())
		{
			return shippingAddress.get(0);
		}
		else 
		{
			return null;
		}
	}
	
}