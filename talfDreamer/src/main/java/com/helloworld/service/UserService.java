package com.helloworld.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helloworld.dao.UserDAOImpl;
import com.helloworld.model.BillingAddress;
import com.helloworld.model.ShippingAddress;
import com.helloworld.model.User;

@Service
@Transactional
public class UserService 
{
	@Autowired
	UserDAOImpl userDAOImpl;
	
	public void addUser(User user)
	{
		userDAOImpl.addUser(user);
	}
	
	public void updateUser(User user)
	{
		userDAOImpl.updateUser(user);
	}

	public User getUserId(int userId)
	{
		return userDAOImpl.getUserId(userId);		
	}
	
	public User getUserByusername(String username)
	{
		return userDAOImpl.getUserByusername(username);
	}
	
	public String fetchAllUserByJson()
	{
		return userDAOImpl.fetchAllUserByJson();
	}
	
	public void toggleUserStatus(int userId)
	{
		userDAOImpl.toggleUserStatus(userId);
	}
	
	public List<User> fetchAllUser() 
	{
		return userDAOImpl.fetchAllUser();
	}
	
	public void addShippingAddress(ShippingAddress shippingAddress) 
	{
		userDAOImpl.addShippingAddress(shippingAddress);
	}

	public void addBillingAddress(BillingAddress billingAddress) {
		userDAOImpl.addBillingAddress(billingAddress);
		
	}
	
	public BillingAddress getBillingAddressById(int userId)
	{
		return userDAOImpl.getBillingAddressById(userId);
	}
	
	public ShippingAddress getShippingAddressById(int userId)
	{
		return userDAOImpl.getShippingAddressById(userId);
	}
	
	
}
