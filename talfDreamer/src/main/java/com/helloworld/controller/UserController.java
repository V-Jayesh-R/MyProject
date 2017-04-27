package com.helloworld.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.helloworld.model.User;
import com.helloworld.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	
@RequestMapping("/user")
	public String getUserPage(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("userlist", userService.listUsers());
	
		return "userform";
	}
	
	@RequestMapping("/adduser")
	public String addUserReg( @ModelAttribute("user")User user) {
		user.setEnabled(true);
		user.setRole("USER");
		userService.addUser(user);
		return "redirect:/user";
	}
	
	@RequestMapping("/login")
	public String addLogin() {
	
		return "login";
	}
	
	@RequestMapping(value="/perform_logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/";
	}
	

	
}
