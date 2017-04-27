package com.helloworld.model;

import java.io.Serializable;

import javax.persistence.*;

import com.google.gson.annotations.Expose;

@Entity
public class ShippingAddress implements Serializable
{
	
	private static final long serialVersionUID = 1L;

	@Id
	@Expose
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int shipAddId;
	
	@Expose
	int userId;
	
	@Expose
	private String sName;
	
	@Expose
	private String sPrefix;
	
	@Expose
	private String sLandmark;
	
	@Expose
	private String sStreet;
	
	@Expose
	private String sCity;
	
	@Expose
	private String sDistrict;
	
	@Expose	
	private String sState;
	
	@Expose
	private int sPIN;
	
	@OneToOne
	@JoinColumn(name="userId", nullable=false , updatable=false , insertable=false )
	private User user;

	public int getShipAddId() {
		return shipAddId;
	}

	public void setShipAddId(int shipAddId) {
		this.shipAddId = shipAddId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getsPrefix() {
		return sPrefix;
	}

	public void setsPrefix(String sPrefix) {
		this.sPrefix = sPrefix;
	}

	public String getsLandmark() {
		return sLandmark;
	}

	public void setsLandmark(String sLandmark) {
		this.sLandmark = sLandmark;
	}

	public String getsStreet() {
		return sStreet;
	}

	public void setsStreet(String sStreet) {
		this.sStreet = sStreet;
	}

	public String getsCity() {
		return sCity;
	}

	public void setsCity(String sCity) {
		this.sCity = sCity;
	}
	
	public String getsDistrict() {
		return sDistrict;
	}

	public void setsDistrict(String sDistrict) {
		this.sDistrict = sDistrict;
	}

	public String getsState() {
		return sState;
	}

	public void setsState(String sState) {
		this.sState = sState;
	}

	public void setsPIN(int sPIN) {
		this.sPIN = sPIN;
	}

	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}

	public int getsPIN() {
		return sPIN;
	}
	
	
}
