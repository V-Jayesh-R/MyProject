package com.helloworld.model;

import javax.persistence.*;

@Entity
public class Cart {
	@Id
	private int cartId;
	private int userId;
	
	@OneToOne
	@JoinColumn(name="userId",insertable=false,nullable=false,updatable=false)
	public User user;
	
	public User getuser() {
		return user;
	}

	public void setuser(User user) {
		this.user = user;
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

}
