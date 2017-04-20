package com.helloworld.model;


import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.annotations.Expose;

@Entity
public class Product {

	@Expose
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int productId;

	@Expose
	@NotEmpty(message = "Product Name cannot be Empty")
	private String productName;

	@Expose
	@NotEmpty(message = "Product Description cannot be Empty")
	private String productDescription;

	@Expose
	private double productActualPrice;

	@Expose
	private double productDiscount;
	
	@Expose
	private double productFinalPrice;

	@Expose
	private int productStock;
	
	@Expose
	private int productReturnDays;
	
	@Expose
	@NotEmpty(message = "Product Made Country cannot be Empty")
	private String productMadeCountry;

	@Expose
	private int categoryId;

	@Expose
	private int subCategoryId;

	@Expose
	private int supplierId;

	@Expose
	private int brandId;

	@Expose
	@ManyToOne
	@JoinColumn(name = "categoryId", nullable = false, updatable = false, insertable = false)
	private Category category;

	@Expose
	@ManyToOne
	@JoinColumn(name = "subCategoryId", nullable = false, updatable = false, insertable = false)
	private SubCategory subCategory;

	@Expose
	@ManyToOne
	@JoinColumn(name = "supplierId", nullable = false, updatable = false, insertable = false)
	private Supplier supplier;

	@Expose
	@ManyToOne
	@JoinColumn(name = "brandId", nullable = false, updatable = false, insertable = false)
	private Brand brand;

	@Transient
	private List<MultipartFile> productImage;

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public double getProductActualPrice() {
		return productActualPrice;
	}

	public void setProductActualPrice(double productActualPrice) {
		this.productActualPrice = productActualPrice;
	}

	public double getProductDiscount() {
		return productDiscount;
	}

	public void setProductDiscount(double productDiscount) {
		this.productDiscount = productDiscount;
	}

	public double getProductFinalPrice() {
		return productFinalPrice;
	}

	public void setProductFinalPrice(double productFinalPrice) {
		this.productFinalPrice = productFinalPrice;
	}

	public int getProductStock() {
		return productStock;
	}

	public void setProductStock(int productStock) {
		this.productStock = productStock;
	}

	public int getProductReturnDays() {
		return productReturnDays;
	}

	public void setProductReturnDays(int productReturnDays) {
		this.productReturnDays = productReturnDays;
	}

	public String getProductMadeCountry() {
		return productMadeCountry;
	}

	public void setProductMadeCountry(String productMadeCountry) {
		this.productMadeCountry = productMadeCountry;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

	public int getBrandId() {
		return brandId;
	}

	public void setBrandId(int brandId) {
		this.brandId = brandId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public SubCategory getSubCategory() {
		return subCategory;
	}

	public void setSubCategory(SubCategory subCategory) {
		this.subCategory = subCategory;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public Brand getBrand() {
		return brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	public List<MultipartFile> getProductImage() {
		return productImage;
	}

	public void setProductImage(List<MultipartFile> productImage) {
		this.productImage = productImage;
	}

	
}



