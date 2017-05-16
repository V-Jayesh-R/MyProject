package com.helloworld.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.helloworld.dao.BrandDAO;
import com.helloworld.model.Brand;




@Repository
public class BrandDAOImpl implements BrandDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addBrand(Brand brand) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(brand);
	}
	@SuppressWarnings("unchecked")
	public List<Brand> listBrand() 
	{
		Session session = this.sessionFactory.getCurrentSession();
		List<Brand> BrandList = session.createQuery("from Brand").list();
		return BrandList;
	}
	@SuppressWarnings("unchecked")
	public Brand getBrandById(int brandId) 
	{
		String hql = "from Brand where brandId="+brandId;
		List<Brand> slist = sessionFactory.getCurrentSession().createQuery(hql).list();
		return slist.get(0);
	}
	public void deleteBrand(int brandId) 
	{
		Brand s=new Brand();
		s.setBrandId(brandId);
		sessionFactory.getCurrentSession().delete(s);
	}
	@SuppressWarnings("unchecked")
	public Brand getBrandByName(String brandName) 
	{
		List<Brand> slist = sessionFactory.getCurrentSession().createQuery("from Brand where brandName = "+"'"+brandName+"'").list();
		return slist.get(0);
	}
}
