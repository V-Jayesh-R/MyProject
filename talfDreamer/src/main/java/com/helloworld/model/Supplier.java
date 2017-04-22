package com.helloworld.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Supplier 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int supplierId;
	@NotEmpty(message="Supplier Name can not be empty")
	private String supplierName;
	
	private long supplierContact;
	@NotEmpty(message="Supplier Address can not be empty")
	private String address;
	@NotEmpty(message="Supplier City can not be empty")
	private String city;
	@NotEmpty(message="Supplier Country can not be empty")
	private String country;
	
	public int getSupplierId() 
	{
		return supplierId;
	}
	public void setSupplierId(int supplierId) 
	{
		this.supplierId = supplierId;
	}
	public String getSupplierName() 
	{
		return supplierName;
	}
	public void setSupplierName(String supplierName) 
	{
		this.supplierName = supplierName;
	}
	public long getSupplierContact() 
	{
		return supplierContact;
	}
	public void setSupplierContact(long supplierContact) 
	{
		this.supplierContact = supplierContact;
	}
	public String getAddress() 
	{
		return address;
	}
	public void setAddress(String address) 
	{
		this.address = address;
	}
	public String getCity() 
	{
		return city;
	}
	public void setCity(String city) 
	{
		this.city = city;
	}
	public String getCountry() 
	{
		return country;
	}
	public void setCountry(String country) 
	{
		this.country = country;
	}
}
