package com.helloworld.model;

import javax.persistence.*;

import com.google.gson.annotations.Expose;

@Entity
public class Cart {
	@Expose
	@Id
	private int cartId;
	
	@Expose
	private int userId;

	@Expose
	@OneToOne
	@JoinColumn(name = "userId", insertable = false, nullable = false, updatable = false)
	public User user;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
