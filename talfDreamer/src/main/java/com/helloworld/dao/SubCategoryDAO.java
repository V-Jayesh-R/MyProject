package com.helloworld.dao;

import java.util.List;

import com.helloworld.model.SubCategory;

public interface SubCategoryDAO {


	public void addSubCategory(SubCategory subcategory);

	public List<SubCategory>listSubCategory();
	public SubCategory getSubCategoryById(int subCategoryId);
	public void deleteSubCategory(int subCategoryId);
	public SubCategory getSubCategoryByName(String subCategorytName);
}
