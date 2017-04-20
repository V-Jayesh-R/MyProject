package com.helloworld.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.helloworld.model.Brand;


@Repository
public class BrandDAOImpl implements BrandDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addBrand(Brand brand) {
		sessionFactory.getCurrentSession().saveOrUpdate(brand);
	}

	public List<Brand> fetchAllBrand() {
		List<Brand> getList = sessionFactory.getCurrentSession().createQuery("from Brand").getResultList();
		return getList;
	}

	public String fetchAllBrandByJson() {
		List<Brand> getList = sessionFactory.getCurrentSession().createQuery("from Brand").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(getList);
		return list;
	}

	public Brand getBrandById(int brandId) {
		List<Brand> getList = sessionFactory.getCurrentSession().createQuery("from Brand where brandId = "+brandId).getResultList();
		return getList.get(0);
	}

	public void deleteBrand(int brandId) {
		Brand b = new Brand();
		b.setBrandId(brandId);
		sessionFactory.getCurrentSession().delete(b);
	}

}
