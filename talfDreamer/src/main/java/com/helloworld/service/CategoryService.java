package com.helloworld.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.helloworld.daoimpl.CategoryImpl;
import com.helloworld.model.Category;




@Service
@Transactional
public class CategoryService  {

	@Autowired
	 private CategoryImpl categoryimpl;

	@Transactional
	
	public void addCategory(Category category) {
		categoryimpl.addCategory(category);
		
	}

	public Category getCategoryById(int categoryId) {
		return categoryimpl.getCategoryById(categoryId);
		
	}

	public List<Category> getCategorylist() {
		return categoryimpl.getCategorylist();
		
	}

	public void deleteCategory(int categoryId) {
		 categoryimpl.deleteCategory(categoryId);
		
	}

	public Category getCategoryByName(String categoryName) {
	
		return categoryimpl.getCategoryByName(categoryName);
	}
	
	
	
}
