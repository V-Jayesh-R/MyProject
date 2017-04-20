package com.helloworld.dao;



	import java.util.List;

	import org.hibernate.SessionFactory;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;

	import com.google.gson.Gson;
import com.helloworld.model.Supplier;
	

	

	@Repository
	public class SupplierDAOImpl implements SupplierDAO {

		@Autowired
		private SessionFactory sessionFactory;
		
		public void addSupplier(Supplier supplier) {
			sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		}

		public List<Supplier> fetchAllSupplier() {
			List<Supplier> getList = sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
			return getList;
		}

		public String fetchAllSupplierByJson() {
			List<Supplier> getList = sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
			Gson g = new Gson();
			String list = g.toJson(getList);
			return list;
		}

		public Supplier getSupplierById(int supplierId) {
			List<Supplier> getList = sessionFactory.getCurrentSession().createQuery("from Supplier where supplierId = "+supplierId).getResultList();
			return getList.get(0);
		}

		public void deleteSupplier(int supplierId) {
			Supplier s = new Supplier();
			s.setSupplierId(supplierId);
			sessionFactory.getCurrentSession().delete(s);
		}
		
		
}
