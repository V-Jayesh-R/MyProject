package com.helloworld.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helloworld.daoimpl.UserDAOImpl;
import com.helloworld.model.User;

@Service
@Transactional
public class UserService {
	@Autowired
	UserDAOImpl userDAOImpl;

	public void addUser(User userReg) {
		// TODO Auto-generated method stub
		userDAOImpl.addUser(userReg);

	}

	public List<User> listUsers() {
		// TODO Auto-generated method stub
		return userDAOImpl.listUsers();
	}
	
	public User getUserById(int userId){
		return userDAOImpl.getUserById(userId);
	}
	public User getUserByName(String userName){
		return userDAOImpl.getUserByName(userName);
	}

}