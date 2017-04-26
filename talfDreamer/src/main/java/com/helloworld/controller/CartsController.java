package com.helloworld.controller;

import java.security.Principal;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.helloworld.model.CartItems;
import com.helloworld.service.CartService;
import com.helloworld.service.CategoryService;
import com.helloworld.service.ProductService;
import com.helloworld.service.UserService;

@Controller
public class CartsController {
	@Autowired
	ProductService productService;
	@Autowired
	UserService userService;
	@Autowired
	CartService cartService;
	
	@RequestMapping("/addtocart-{productId}")
	public String addToCart(@PathVariable("productId") int productId , Principal p, @ModelAttribute()CartItems cartItem)
	{
		String userName = p.getName();
		 int userId = userService.getUserByusername(userName).getUserId();

		cartItem.setUserId(userId);
		cartItem.setCartId(userId);

		String productName = productService.getProductById(productId).getProductName();
		Double price = productService.getProductById(productId).getProductPrice();

		cartItem.setProductName(productName);
		cartItem.setPrice(price);
		cartItem.setQuantity(1);
		cartItem.setAmount(cartItem.getQuantity() * cartItem.getPrice());

		cartItem.setFlag("N");
		Date d=new Date();
		cartItem.setOrderDate(d);

	

		return "redirect:/cartlist";
	}
	
	@RequestMapping("/cartlist")
	public String getCartList(Model model,Principal p) {
		String username=p.getName();
		int userId=userService.getUserByusername(username).getUserId();
		
		return "CartList";
	}
	

}