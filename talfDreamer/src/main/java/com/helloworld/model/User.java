package com.helloworld.model;


import java.io.Serializable;
import java.util.Set;


import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Transient;

import com.google.gson.annotations.Expose;


@Entity
public class User implements Serializable
{
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int userId;
	
	@Expose
	private String username;
	
	@Expose
	private String password;
	
	@Expose
	private boolean enabled;
	
	@Expose
	private String role;
	
	@Expose
	private String fname;
	
	@Expose
	private String lname;
	
	@Expose
	private String DOB;
	
	@Expose
	private String contactNo;
	
	@Expose
	private String alternateContactNo;
	
	@OneToOne
	public BillingAddress billingAddress;
	
	@OneToOne
	public ShippingAddress shippingAddress;
	
	@OneToMany(mappedBy="user", fetch=FetchType.EAGER)
	private Set<CartItems> cartItems;

		
	public Set<CartItems> getCartItems() {
		return cartItems;
	}
	public void setCartItems(Set<CartItems> cartItems) {
		this.cartItems = cartItems;
	}
	public BillingAddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}

	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public String getAlternateContactNo() {
		return alternateContactNo;
	}
	public void setAlternateContactNo(String alternateContactNo) {
		this.alternateContactNo = alternateContactNo;
	}
}