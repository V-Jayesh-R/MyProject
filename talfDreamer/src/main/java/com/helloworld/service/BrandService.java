package com.helloworld.service;



	import java.util.List;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;
	import org.springframework.transaction.annotation.Transactional;

import com.helloworld.dao.BrandDAOImpl;

import com.helloworld.model.Brand;


	

	@Service
	@Transactional
	public class BrandService {

		
		
			@Autowired
			private BrandDAOImpl branddaoimpl;
			
			public void addBrand(Brand brand)
			{
				branddaoimpl.addBrand(brand);
			}
			public List<Brand> listBrand()
			{
				return branddaoimpl.listBrand();
			}
			public Brand getBrandById(int brandId)
			{
				return branddaoimpl.getBrandById(brandId);
			}
			public Brand getBrandByName(String brandName)
			{
				return branddaoimpl.getBrandByName(brandName);
			}
			public Brand editBrandById(int brandId)
			{
				return branddaoimpl.getBrandById(brandId);
			}
			public void deleteBrand(int brandId)
			{
				branddaoimpl.deleteBrand(brandId);
			}
		}

