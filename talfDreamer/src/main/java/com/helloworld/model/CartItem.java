package com.helloworld.model;

import java.util.Date;

import javax.persistence.*;

import com.google.gson.annotations.Expose;

@Entity
public class CartItem {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Expose
	private int cartItemId;
	@Expose
	private int productId;
	@Expose
	private int userId;
	@Expose
	private int cartId;
	@Expose
	private String productName;
	@Expose
	private double price;
	@Expose
	private int quantity;
	@Expose
	private double Amount;
	@Expose
	private String flag;
	@Expose
	private Date orderDate;
	
	@ManyToOne
	@JoinColumn(name="cartId", nullable=false, insertable=false, updatable=false)
	private Cart cart;
	
	@ManyToOne
	@JoinColumn(name="productId", nullable=false, insertable=false, updatable=false)
	private Product product;
	
	@ManyToOne
	@JoinColumn(name="userId", nullable=false, insertable=false, updatable=false)
	private User user;
	
	
	public int getCartItemId() {
		return cartItemId;
	}

	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getAmount() {
		return Amount;
	}

	public void setAmount(double amount) {
		Amount = amount;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
	

}