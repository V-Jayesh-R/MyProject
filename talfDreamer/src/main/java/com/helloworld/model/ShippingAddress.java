package com.helloworld.model;

import javax.persistence.*;

@Entity
public class ShippingAddress {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

	private int shippingAddressId;
	public int getShippingAddressId() {
		return shippingAddressId;
	}
	public void setShippingAddressId(int shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}
	public String getStreetAddress() {
		return streetAddress;
	}
	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}
	public String getFlatNo() {
		return flatNo;
	}
	public void setFlatNo(String flatNo) {
		this.flatNo = flatNo;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	private String streetAddress;
	private String flatNo;
	private String city;
	private String state;
	private String postalCode;
	
/*	@OneToOne
	private UserReg userReg;*/
	@ManyToOne
	@JoinColumn(name="userId",updatable=false,insertable=false,nullable=false)
	private User user;
	public User getUser() {
		return user;
	}
	public void setUserReg(User user) {
		this.user = user;
	}



}
