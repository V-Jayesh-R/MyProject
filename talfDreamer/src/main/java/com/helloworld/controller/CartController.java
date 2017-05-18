package com.helloworld.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.helloworld.model.CartItem;
import com.helloworld.service.CartService;
import com.helloworld.service.ProductService;
import com.helloworld.service.UserService;



@Controller
public class CartController {

	@Autowired
	private CartService cartService;

	@Autowired
	private ProductService productService;

	@Autowired
	private UserService userService;

	@RequestMapping("/addToCartFromHome/{productId}")
	public String addToCartFromHome(Principal p, @ModelAttribute("cartItems") CartItem cartItems,
			@PathVariable("productId") int productId) {

		String username = p.getName();
		int u = userService.getUserByName(username).getUserId();

		cartItems.setCartId(u);
		System.out.println(u);
		cartItems.setUserId(u);
		System.out.println(u);
		cartItems.setProductId(productService.getProductById(productId).getProductId());
		cartItems.setProductName(productService.getProductById(productId).getProductName());
		cartItems.setCartItemQuantity(1);
		cartItems.setOldAmount(productService.getProductById(productId).getProductAmount());
		cartItems.setNewAmount(productService.getProductById(productId).getProductPrice());
		double a=productService.getProductById(productId).getProductAmount(); 
		System.out.println(a);
		double b=productService.getProductById(productId).getProductPrice(); 
		System.out.println(b);
		cartItems.setCartTotalAmount(productService.getProductById(productId).getProductPrice());
		cartService.addToCart(cartItems);
		return "redirect:/";
	}
	
	@RequestMapping("/addToCartFromWishList/{productId}")
	public String addToCartFromWishList(Principal p, @ModelAttribute("cartItems") CartItem cartItems,
			@PathVariable("productId") int productId) {

		String username = p.getName();
		int u = userService.getUserByName(username).getUserId();
		cartItems.setCartId(u);
		cartItems.setUserId(u);
		cartItems.setProductId(productService.getProductById(productId).getProductId());
		cartItems.setProductName(productService.getProductById(productId).getProductName());
		cartItems.setCartItemQuantity(1);
		cartItems.setOldAmount(productService.getProductById(productId).getProductAmount());
		cartItems.setNewAmount(productService.getProductById(productId).getProductPrice());
		cartItems.setCartTotalAmount(productService.getProductById(productId).getProductPrice());
		cartService.addToCart(cartItems);
		return "redirect:/displayWishList";
	}
	
	@RequestMapping("/addToCartFromProduct/{productId}")
	public String addToCartFromProduct(Principal p, @ModelAttribute("cartItems") CartItem cartItems,
			@PathVariable("productId") int productId) {

		/*String username = p.getName();
		int u = userService.getUserByName(username).getUserId();*/

		/*cartItems.setCartId(u);
		cartItems.setUserId(u);*/
		cartItems.setProductId(productService.getProductById(productId).getProductId());
		cartItems.setProductName(productService.getProductById(productId).getProductName());
		cartItems.setCartItemQuantity(1);
		cartItems.setOldAmount(productService.getProductById(productId).getProductAmount());
		cartItems.setNewAmount(productService.getProductById(productId).getProductPrice());
		cartItems.setCartTotalAmount(productService.getProductById(productId).getProductPrice());
		cartService.addToCart(cartItems);
		return "redirect:/viewproduct/{productId}";
	}

	@RequestMapping("/displayCart")
	public String displayCart(Principal p,Model model) {
		
		String username = p.getName();
		int u = userService.getUserByName(username).getUserId();
		
		model.addAttribute("product", productService.getProductById(1));
		model.addAttribute("citems", cartService.displayCart(u));
		
		List<CartItem> cart = cartService.displayCartByList(u);
		double finalPrice = 0;
		
		for(int i=0;i<cart.size();i++) {
			CartItem item = cart.get(i);
			finalPrice = finalPrice + item.getCartTotalAmount();
		}
		
		model.addAttribute("grandTotal", finalPrice);
		
		return "cart";
	}
	
	@RequestMapping("/deleteFromCart/{cartItemId}")
	public String deleteFromCart(@PathVariable("cartItemId") int cartItemId) {
		
		cartService.deleteFromCart(cartItemId);
		return "redirect:/displayCart";
	}
	
	@RequestMapping("/updateCart")
	public String updateCart(Principal p, Model model ,@ModelAttribute("cartItems") CartItem cartItems,
			HttpServletRequest request) {
		
		int u = userService.getUserByName(p.getName()).getUserId();
		List<CartItem> cart = cartService.displayCartByList(u);
		for(CartItem i : cart) {
			int q = Integer.parseInt(request.getParameter(i.getProductName()));
			double tot = i.getNewAmount();
			double price = tot*q;
			
			cartService.updateCart(i.getCartItemId(), price, q);
		}
		return "redirect:/displayCart";
	}
	
	@RequestMapping("/checkout")
	public String getCheckOutPage(Model model, Principal p) {
		
		String username = p.getName();
		int u = userService.getUserByName(username).getUserId();
		
		List<CartItem> cart = cartService.displayCartByList(u);
		double finalPrice = 0;
		
		for(int i=0;i<cart.size();i++) {
			CartItem item = cart.get(i);
			finalPrice = finalPrice + item.getCartTotalAmount();
		}
		
		model.addAttribute("grandTotal", finalPrice);
		
		model.addAttribute("display", cartService.displayCart(u));
		return "checkout";
	}
	
	@RequestMapping("/placeOrders")
	public String placeOrders(Principal p)
	{
		int uid=userService.getUserByName(p.getName()).getUserId();
		List<CartItem> list=cartService.displayCartByList(uid);
		for(CartItem i: list)
		{
			int pid=i.getProductId();
			int quant=i.getCartItemQuantity();
			System.out.println(quant);
			int productQuantity=productService.getProductById(pid).getProductQuantity();
			System.out.println(productQuantity);
			int finalQuantity=productQuantity-quant;
			System.out.println(finalQuantity);
			cartService.updateCartOrders(uid);
			productService.updateQuantity(pid,finalQuantity);
			
		}
		return "index";
	}
}
