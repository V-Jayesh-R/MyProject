package com.helloworld.dao;

import java.util.List;

import com.helloworld.model.Brand;


public interface BrandDAO {

public void addBrand(Brand brand);
	
	public List<Brand> listBrand();
	public Brand getBrandById(int brandId);
	public void deleteBrand(int brandId);
	public Brand getBrandByName(String brandtName);
}
