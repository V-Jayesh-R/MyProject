package com.helloworld.dao;

import java.util.List;

import com.helloworld.model.Supplier;

public interface SupplierDAO {

	public void addSupplier(Supplier supplier);

	public List<Supplier> fetchAllSupplier();

	public String fetchAllSupplierByJson();

	public Supplier getSupplierById(int supplierId);

	public void deleteSupplier(int supplierId);
}
