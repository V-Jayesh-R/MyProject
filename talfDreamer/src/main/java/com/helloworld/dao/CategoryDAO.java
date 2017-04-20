package com.helloworld.dao;

import java.util.List;

import com.helloworld.model.Category;

public interface CategoryDAO {


	public void addCategory(Category category);
	
	public Category getCategoryById(int categoryId);
	
	public List<Category> getCategorylist();
	
	public void deleteCategory(int categoryId);
	
	public Category getCategoryByName(String categoryname);
}
