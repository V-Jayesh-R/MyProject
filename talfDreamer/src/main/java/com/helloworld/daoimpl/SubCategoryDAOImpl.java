package com.helloworld.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.helloworld.dao.SubCategoryDAO;
import com.helloworld.model.SubCategory;

@Repository
public class SubCategoryDAOImpl implements SubCategoryDAO
{
	@Autowired
	private SessionFactory sessionfactory;
	
	public void addSubCategory(SubCategory subCategory) 
	{
		sessionfactory.getCurrentSession().saveOrUpdate(subCategory);
	}
	
	@SuppressWarnings("unchecked")

	public List<SubCategory> listSubCategory() 
	{
		Session session = this.sessionfactory.getCurrentSession();
				List<SubCategory> listSubCategory = session.createQuery("from SubCategory").getResultList();
		return listSubCategory;
	}
	@SuppressWarnings("unchecked")
	public SubCategory getSubCategoryByName(String subCategoryName) 
	{
		Session session = sessionfactory.getCurrentSession();
		String str = "from SubCategory where subCategoryName=" + "'" + subCategoryName + "'";
		
		List<SubCategory> subCategoryByName = session.createQuery(str).getResultList();
		return subCategoryByName.get(0);
	}
	@SuppressWarnings("unchecked")
	public SubCategory getSubCategoryById(int subCategoryId) 
	{
		String hql = "from SubCategory where subCategoryId="+subCategoryId;
		List<SubCategory>subCategoryList=sessionfactory.getCurrentSession().createQuery(hql).getResultList();
		
		return subCategoryList.get(0);
	}
	public void deleteSubCategory(int subCategoryId)
	{
		SubCategory sc=new SubCategory();
		sc.setSubCategoryId(subCategoryId);
		sessionfactory.getCurrentSession().delete(sc);
	}

	
}