/*package com.helloworld.controller;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.helloworld.model.CartItem;
import com.helloworld.service.CartItemService;
import com.helloworld.service.ProductService;
import com.helloworld.service.UserService;

@Controller
public class CartItemController {
	
		@Autowired
		CartItemService cartService;
		@Autowired
		ProductService productService;
		@Autowired
		UserService userService;
		@Autowired
		SessionFactory sessionFactory;
		
		@RequestMapping("/addToCartHome-{productID}")
		public String addToCartHome(Principal p,@ModelAttribute("cartItems")CartItem cartItems,@PathVariable("productID")int productID,Model model,HttpServletRequest request)
		{
			try
			{
				CartItem c=cartService.;
				Gson g=new Gson();
				String json=g.toJson(c);
				model.addAttribute("cart","You already have this item in cart");
				return "redirect:/";
			}
			catch(Exception e)
			{
				int uid=userService.getUserByName(p.getName()).getUserId();
				cartItems.setUserId(uid);
				cartItems.setCartId(uid);
				cartItems.setProductId(productID);
				cartItems.setProductName(productService.addProduct(productID).getProductName());
				cartItems.setCartAmount(productService.addProduct(productID).getProductSalePrice());
				cartItems.setQuantity(1);
				int price=productService.addProduct(productID).getProductSalePrice();
				int quant=cartItems.getQuantity();
				cartItems.setAmount(price*quant);
				cartService.addToCart(cartItems);
				return "redirect:/";
			}
			
		}
		
		@RequestMapping("/viewCart")
		public String getCart(Model model,Principal p)
		{
			int uid=userService.getUserByName(p.getName()).getUserId();
			model.addAttribute("displayCart",cartService.(uid));
			
			List<CartItem> cart=cartService.displayCart1(uid);
			int finalprice=0;
			for(int i=0;i<cart.size();i++)
			{
				CartItem item=cart.get(i);
				finalprice=finalprice+item.getAmount();
			}
			model.addAttribute("grandtotal",finalprice);
			return "Cart";
		}
		
		@RequestMapping("/addToCartShop-{productID}")
		public String addToCartShop(Principal p,@ModelAttribute("cartItems")CartItem cartItems,@PathVariable("productID")int productID,Model model)
		{
			try
			{
				CartItem c=cartService.displayCartProduct(productID);
				model.addAttribute("cart","You already have this item in cart");
				return "redirect:/Shop";
			}
			catch(Exception e)
			{
				int uid=userService.getUserByName(p.getName()).getUserId();
				int stock=productService.updateProduct(productID).getProductQuantity();
				if(stock>0)
				{
					cartItems.setUserId(uid);
					cartItems.setCartId(uid);
					cartItems.setProductId(productID);
					cartItems.setProductName(productService.updateProduct(productID).getProductName());
					cartItems.setCartAmount(productService.updateProduct(productID).getProductSalePrice());
					cartItems.setQuantity(1);
					int price=productService.updateProduct(productID).getProductSalePrice();
					int quant=cartItems.getQuantity();
					cartItems.setAmount(price*quant);
					cartService.addToCart(cartItems);
					model.addAttribute("cart","Added in cart");
					return "redirect:/Shop";
				}
				else
				{
					model.addAttribute("cart","Not in Stock");
					return "redirect:/Shop";
				}
			}
		}
		
		@RequestMapping("/delete-{cartItemsID}")
		public String deleteCart(@PathVariable("cartItemsID")int cartItemsID)
		{
			cartService.deletecart(cartItemsID);
			return "redirect:/viewCart";
		}
		
		@RequestMapping("/addToCartViewProduct-{productID}")
		public String addToCartViewProduct(Principal p,@ModelAttribute("cartItems")CartItem cartItems,@PathVariable("productID")int productID,Model model)
		{
			try
			{
				CartItem c=cartService.displayCartProduct(productID);
				Gson g=new Gson();
				String json=g.toJson(c);
				model.addAttribute("cart","You already have this item in cart");
				return "redirect:/viewProduct-"+productID;
			}
			catch(Exception e)
			{
				int uid=userService.getUserByName(p.getName()).getUserId();		
				cartItems.setUserId(uid);
				cartItems.setCartId(uid);
				cartItems.setProductId(productID);
				cartItems.setProductName(productService.updateProduct(productID).getProductName());
				cartItems.setCartAmount(productService.updateProduct(productID).getProductSalePrice());
				int price=productService.updateProduct(productID).getProductSalePrice();
				int quant=cartItems.getQuantity();
				cartItems.setAmount(price*quant);
				cartService.addToCart(cartItems);
				return "redirect:/viewProduct-"+productID;
			}
		}
		
		@RequestMapping("/addToCartWish-{productID}")
		public String addToCartWish(Principal p,@ModelAttribute("cartItems")CartItem cartItems,@PathVariable("productID")int productID,Model model)
		{
			try
			{
				CartItem c=cartService.displayCartProduct(productID);
				Gson g=new Gson();
				String json=g.toJson(c);
				model.addAttribute("cart","You already have this item in cart");
				return "redirect:/AccountWishlist";
			}
			catch(Exception e)
			{
				int uid=userService.getUserByName(p.getName()).getUserId();
				cartItems.setUserId(uid);
				cartItems.setCartId(uid);
				cartItems.setProductId(productID);
				cartItems.setProductName(productService.updateProduct(productID).getProductName());
				cartItems.setCartAmount(productService.updateProduct(productID).getProductSalePrice());
				cartItems.setQuantity(1);
				int price=productService.updateProduct(productID).getProductSalePrice();
				int quant=cartItems.getQuantity();
				cartItems.setAmount(price*quant);
				cartService.addToCart(cartItems);
				return "redirect:/AccountWishlist";
			}
		}
		
		@RequestMapping("/updateCart")
		public String updateCart(Principal  p,Model model,HttpServletRequest request,@ModelAttribute("cartItems")CartItem cartItems )
		{
			int user=userService.getUserByName(p.getName()).getUserID();
			
			List<CartItem> k=cartService.displayCart1(user);
			
			for (CartItem i : k)
			{
				int quant=Integer.parseInt(request.getParameter(i.getProductName()));
				int price=i.getCartAmount();
				int total=price*quant;
				cartService.updateCart(i.getCartItemID(),total,quant);
			}
			
			return "redirect:/viewCart";
		}
		
		@RequestMapping("/placeOrders")
		public String placeOrders(Principal p)
		{
			int uid=userService.getUserByName(p.getName()).getUserID();
			List<CartItem> list=cartService.displayCart1(uid);
			for(CartItem i: list)
			{
				int pid=i.getProductId();
				int quant=i.getQuantity();
				int productQuantity=productService.updateProduct(pid).getProductQuantity();
				int finalQuantity=productQuantity-quant;
				cartService.updateCartOrders(uid);
				productService.updateQuantity(pid,finalQuantity);
				if(finalQuantity==0)
				{
					productService.updateTag(pid);
				}
			}
			return "Orders";
		}
	}
	


*/