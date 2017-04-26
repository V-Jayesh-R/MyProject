package com.helloworld.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.helloworld.model.User;
import com.helloworld.service.CategoryService;
import com.helloworld.service.UserService;

@Controller
public class UserController 
{
	@Autowired
	UserService userService;
	
	@Autowired
	CategoryService categoryService;
	
	/*@RequestMapping("/registrationPage")
	public String userRegistrationPage(Model model )
	{
		model.addAttribute("user", new User());
		return "registration";
	}*/
		
	@RequestMapping("/userList")
	public String getAllUserByJson(Model model)
	{	
		model.addAttribute("categoryList", categoryService.getCategorylist());
		model.addAttribute("userlist", userService.fetchAllUser());
		model.addAttribute("userlistbyjson", userService.fetchAllUserByJson());
		return "userlist";
	}
		
	@RequestMapping("/updateUser")
	public String updateUser(@ModelAttribute("user")User user)
	{
		userService.updateUser(user);
		return "redirect:/profile";
	}
	
	@RequestMapping("toggleuser-{userId}")
	public String toggleUser(@PathVariable("userId")int userId)
	{
		userService.toggleUserStatus(userId);
		return "redirect:/userList";
	}

	@RequestMapping("/login")
	public String getLoginPage()
	{
		return "login";
	}
	
	@RequestMapping("/logout")
	public String getLogout(HttpServletRequest request, HttpServletResponse response )
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth!=null)
		{
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "main-login";
	}
	
	@RequestMapping("/profile")
	public String getUserPage(Model model, Principal p)
	{
		String username = p.getName();
		User userdata = userService.getUserByusername(username);		
				
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String uData= g.toJson(userdata);
		
		model.addAttribute("userdata", uData);
		model.addAttribute("categoryList", categoryService.getCategorylist());
		
		return "user-profile";
	}
	
	@RequestMapping("/updateUserById-{userId}")
	public String updateUser(Model model, Principal p)
	{
		String username = p.getName();
		int userId = userService.getUserByusername(username).getUserId();
		
		model.addAttribute("user", userService.getUserId(userId));
		model.addAttribute("categoryList", categoryService.getCategorylist() );
		
		return "editdetails";
	}
}
