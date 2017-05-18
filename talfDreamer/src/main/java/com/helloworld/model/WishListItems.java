package com.helloworld.model;

import javax.persistence.*;

import com.google.gson.annotations.Expose;

@Entity
public class WishListItems {
	
	@Expose
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int wishListItemId;
	
	@Expose
	private int wishListId;
	
	@Expose
	private int userId;
	
	@Expose
	private int productId;
	
	@Expose
	@ManyToOne
	@JoinColumn(name="wishListId", nullable = false, updatable = false, insertable = false)
	private WishList wishList;
	
	@Expose
	@ManyToOne
	@JoinColumn(name="userId", nullable = false, updatable = false, insertable = false)
	private User user;
	
	@Expose
	@ManyToOne
	@JoinColumn(name="productId", nullable = false, updatable = false, insertable = false)
	private Product product;

	@Expose
	private String productName;
	
	@Expose
	private double newAmount;

	@Expose
	private double oldAmount;

	
	
	public int getWishListItemId() {
		return wishListItemId;
	}

	public void setWishListItemId(int wishListItemId) {
		this.wishListItemId = wishListItemId;
	}

	public int getWishListId() {
		return wishListId;
	}

	public void setWishListId(int wishListId) {
		this.wishListId = wishListId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public WishList getWishList() {
		return wishList;
	}

	public void setWishList(WishList wishList) {
		this.wishList = wishList;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getNewAmount() {
		return newAmount;
	}

	public void setNewAmount(double newAmount) {
		this.newAmount = newAmount;
	}

	public double getOldAmount() {
		return oldAmount;
	}

	public void setOldAmount(double oldAmount) {
		this.oldAmount = oldAmount;
	}
	
	
	
}