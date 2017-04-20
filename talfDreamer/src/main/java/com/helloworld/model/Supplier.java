package com.helloworld.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@Entity
public class Supplier {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int supplierId;

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public String getSupplierName() {
		return supplierName;
	}

	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}

	public String getSupplierDescription() {
		return supplierDescription;
	}

	public void setSupplierDescription(String supplierDescription) {
		this.supplierDescription = supplierDescription;
	}

	public String getSupplierLandmark() {
		return supplierLandmark;
	}

	public void setSupplierLandmark(String supplierLandmark) {
		this.supplierLandmark = supplierLandmark;
	}

	public String getSupplierStreet() {
		return supplierStreet;
	}

	public void setSupplierStreet(String supplierStreet) {
		this.supplierStreet = supplierStreet;
	}

	public String getSupplierCity() {
		return supplierCity;
	}

	public void setSupplierCity(String supplierCity) {
		this.supplierCity = supplierCity;
	}

	public String getSupplierState() {
		return supplierState;
	}

	public void setSupplierState(String supplierState) {
		this.supplierState = supplierState;
	}

	public String getSupplierCountry() {
		return supplierCountry;
	}

	public void setSupplierCountry(String supplierCountry) {
		this.supplierCountry = supplierCountry;
	}

	public String getSupplierEmail() {
		return supplierEmail;
	}

	public void setSupplierEmail(String supplierEmail) {
		this.supplierEmail = supplierEmail;
	}

	public String getSupplierContactNo() {
		return supplierContactNo;
	}

	public void setSupplierContactNo(String supplierContactNo) {
		this.supplierContactNo = supplierContactNo;
	}

	@Expose
	@NotEmpty(message = "Supplier Name cannot be Empty")
	private String supplierName;

	@NotEmpty(message = "Supplier Description cannot be Empty")
	private String supplierDescription;

	@NotEmpty(message = "Supplier Landmark cannot be Empty")
	private String supplierLandmark;

	@NotEmpty(message = "Supplier Street cannot be Empty")
	private String supplierStreet;

	@NotEmpty(message = "Supplier City cannot be Empty")
	private String supplierCity;

	@NotEmpty(message = "Supplier State cannot be Empty")
	private String supplierState;

	@NotEmpty(message = "Supplier Country cannot be Empty")
	private String supplierCountry;

	@NotEmpty(message = "Supplier Email cannot be Empty")
	@Email
	private String supplierEmail;

	@NotEmpty(message = "Supplier Contact Number cannot be Empty")
	private String supplierContactNo;
}
