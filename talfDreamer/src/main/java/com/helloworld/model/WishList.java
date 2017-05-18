package com.helloworld.model;

import javax.persistence.*;

import com.google.gson.annotations.Expose;

@Entity
public class WishList {
	@Expose
	@Id
	private int wishListId;
	
	@Expose
	private int userId;
	
	@Expose
	@OneToOne
	@JoinColumn(name = "userId", nullable = false, insertable = false, updatable = false)
	public User user;

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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
