package com.helloworld.dao;

import java.util.List;

import com.helloworld.model.BillingAddress;
import com.helloworld.model.ShippingAddress;
import com.helloworld.model.User;

public interface UserDAO {

public void addUser(User user);
	
	public User getUserId(int userId);
	
	public User getUserByusername(String username);
	
	public List<User> fetchAllUser();
	
	public String fetchAllUserByJson();
	
	public void toggleUserStatus(int userId);
	
	public void addShippingAddress(ShippingAddress shippingAddress);
	
	public void addBillingAddress(BillingAddress billingAddress);
}
