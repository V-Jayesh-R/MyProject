package com.helloworld.dao;

import java.util.List;

import com.helloworld.model.Brand;

public interface BrandDAO {

	public void addBrand(Brand brand);

	public List<Brand> fetchAllBrand();

	public String fetchAllBrandByJson();

	public Brand getBrandById(int brandId);

	public void deleteBrand(int brandId);
}
