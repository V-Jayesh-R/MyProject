package com.helloworld.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.helloworld.dao.UserDAOImpl;
import com.helloworld.model.User;
@Service
@Transactional
public class UserService {

	@Autowired
	UserDAOImpl userDaoImpl;

	public void addUser(User userReg) {
		// TODO Auto-generated method stub
		userDaoImpl.addUser(userReg);

	}

	public List<User> listUsers() {
		// TODO Auto-generated method stub
		return userDaoImpl.listUsers();
	}
	
	public User getUserById(int userId){
		return userDaoImpl.getUserById(userId);
	}
	public User getUserByName(String userName){
		return userDaoImpl.getUserByName(userName);
	}
}
