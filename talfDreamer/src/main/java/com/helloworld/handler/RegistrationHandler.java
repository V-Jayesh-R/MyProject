package com.helloworld.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.helloworld.model.User;

@Component
public class RegistrationHandler {
	
	@Autowired
	User user;
	
	public User initFlow(){
		System.out.println("abc");
		return new User();
		
	}

}
