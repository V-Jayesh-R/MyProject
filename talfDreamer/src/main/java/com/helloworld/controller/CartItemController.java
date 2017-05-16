package com.helloworld.controller;

import java.security.Principal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.helloworld.model.CartItem;
import com.helloworld.service.CartItemService;
import com.helloworld.service.ProductService;
import com.helloworld.service.UserService;

@Controller
public class CartItemController {
	@Autowired
	ProductService productService;
	@Autowired
	UserService userService;
	@Autowired
	CartItemService cartItemService;
	
	@RequestMapping("/addtocart-{productId}")
	public String addToCart(@PathVariable("productId") int productId , Principal p, @ModelAttribute()CartItem cartItem)
	{
		String userName = p.getName();
		 int userId = userService.getUserByName(userName).getUserId();

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

		cartItemService.addToCart(cartItem);

		return "redirect:/cartlist";
	}
	
	@RequestMapping("/cartlist")
	public String getCartList(Model model,Principal p) {
		String username=p.getName();
		int userId=userService.getUserByName(username).getUserId();
		model.addAttribute("cartlistbyjson", cartItemService.listCartItemByJson(userId));
		return "CartList";
	}
	

}
