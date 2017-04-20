package com.helloworld.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.helloworld.dao.SubCategoryDAOImpl;
import com.helloworld.model.SubCategory;

@Service
@Transactional
public class SubCategoryService
{
	@Autowired
	private SubCategoryDAOImpl subcategorydaoimpl;
	
	public void addSubCategory(SubCategory subCategory)
	{
		subcategorydaoimpl.addSubCategory(subCategory);
	}
	public List<SubCategory> listSubCategory()
	{
		return subcategorydaoimpl.listSubCategory();
	}
	public SubCategory getSubCategoryById(int subCategoryId)
	{
		return subcategorydaoimpl.getSubCategoryById(subCategoryId);
	}
	public SubCategory getSubCategoryByName(String subCategoryName)
	{
		return subcategorydaoimpl.getSubCategoryByName(subCategoryName);
	}
	public SubCategory editSubCategoryById(int subCategoryId)
	{
		return subcategorydaoimpl.getSubCategoryById(subCategoryId);
	}
	public void deleteSubCategory(int subCategoryId)
	{
		subcategorydaoimpl.deleteSubCategory(subCategoryId);
	}
}