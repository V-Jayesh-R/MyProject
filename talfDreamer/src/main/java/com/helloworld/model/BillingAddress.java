package com.helloworld.model;

import java.io.Serializable;

import javax.persistence.*;

import com.google.gson.annotations.Expose;

@Entity
public class BillingAddress implements Serializable
{
 static final long serialVersionUID = 1L;

	@Id
	@Expose
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int billAddId;
	
	@Expose
	int userId;
	
	@Expose
	private String billAddName;
	
	@Expose
	private String bPrefix;
	
	@Expose
	private String bLandmark;
	
	@Expose
	private String bStreet;
	
	@Expose	
	private String bCity;
	
	@Expose
	private String bDistrict;
	
	@Expose
	private String bState;
	
	@Expose
	private int bPIN;
	
	@OneToOne
	@JoinColumn(name="userId", nullable=false , updatable=false , insertable=false )
	private User user;

	public int getBillAddId() {
		return billAddId;
	}

	public void setBillAddId(int billAddId) {
		this.billAddId = billAddId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getBillAddName() {
		return billAddName;
	}

	public void setBillAddName(String billAddName) {
		this.billAddName = billAddName;
	}

	public String getbPrefix() {
		return bPrefix;
	}

	public void setbPrefix(String bPrefix) {
		this.bPrefix = bPrefix;
	}

	public String getbLandmark() {
		return bLandmark;
	}

	public void setbLandmark(String bLandmark) {
		this.bLandmark = bLandmark;
	}

	public String getbStreet() {
		return bStreet;
	}

	public void setbStreet(String bStreet) {
		this.bStreet = bStreet;
	}

	public String getbCity() {
		return bCity;
	}

	public void setbCity(String bCity) {
		this.bCity = bCity;
	}
	
	public String getbDistrict() {
		return bDistrict;
	}

	public void setbDistrict(String bDistrict) {
		this.bDistrict = bDistrict;
	}

	public String getbState() {
		return bState;
	}

	public void setbState(String bState) {
		this.bState = bState;
	}

	public int getbPIN() {
		return bPIN;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public void setbPIN(int bPIN) {
		this.bPIN = bPIN;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
