package com.helloworld.dao;

import java.util.List;

import com.helloworld.model.User;

public interface UserDAO {

	public void addUser(User user);
	/*public void updateUser(User up);
	public void removeUser(User ru);*/
	public List<User> listUsers();
	public User getUserById(int userId);
	public User getUserByName(String userName);
}
