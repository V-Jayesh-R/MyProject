package com.helloworld.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.helloworld.model.Category;
@Repository
public class CategoryImpl implements CategoryDAO {
	@Autowired
	private SessionFactory sessionfactory;

	public void addCategory(Category category) {
		sessionfactory.getCurrentSession().saveOrUpdate(category);
		
	}
	
@SuppressWarnings("unchecked")
	public Category getCategoryById(int categoryId) {
	    String hql="from Category where categoryId="+categoryId;
	    List<Category> list = sessionfactory.getCurrentSession().createQuery(hql).getResultList();
	    return  list.get(0);
	}
@SuppressWarnings("unchecked")
	public List<Category> getCategorylist() { 
		String hql="from Category";
		List<Category> list = sessionfactory.getCurrentSession().createQuery(hql).getResultList();
		 return list;
		
	}

public void deleteCategory(int categoryid)  {
		
		Category c= getCategoryById(categoryid);	
		sessionfactory.getCurrentSession().delete(c);
		
}
@SuppressWarnings("unchecked")
	public Category getCategoryByName(String categoryName) {
		String hql="from Category where categoryName="+"'"+categoryName+"'";
		List<Category> list =sessionfactory.getCurrentSession().createQuery(hql).getResultList();
		return list.get(0);
		
	}



	
	
}
	