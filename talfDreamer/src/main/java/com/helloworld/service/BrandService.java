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
		private BrandDAOImpl brandDAOImpl;

		public void addBrand(Brand brand) {
			brandDAOImpl.addBrand(brand);
		}

		public List<Brand> fetchAllBrand() {
			return brandDAOImpl.fetchAllBrand();
		}

		public String fetchAllBrandByJson() {
			return brandDAOImpl.fetchAllBrandByJson();
		}

		public Brand getBrandById(int brandId) {
			return brandDAOImpl.getBrandById(brandId);
		}

		public void deleteBrand(int brandId) {
			brandDAOImpl.deleteBrand(brandId);
		}
	}

