package com.helloworld.dao;



	import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Repository;

	import com.helloworld.model.Supplier;
	

	

	@Repository
	public class SupplierDAOImpl implements SupplierDAO {

		@Autowired
		private SessionFactory sessionFactory;
		
		public void addSupplier(Supplier supplier) 
		{
			Session session = this.sessionFactory.getCurrentSession();
			session.saveOrUpdate(supplier);
		}
		@SuppressWarnings("unchecked")
		public List<Supplier> listSupplier() 
		{
			Session session = this.sessionFactory.getCurrentSession();
			List<Supplier> SupplierList = session.createQuery("from Supplier").list();
			return SupplierList;
		}
		@SuppressWarnings("unchecked")
		public Supplier getSupplierById(int supplierId) 
		{
			String hql = "from Supplier where supplierId="+supplierId;
			List<Supplier>slist = sessionFactory.getCurrentSession().createQuery(hql).list();
			return slist.get(0);
		}
		public void deleteSupplier(int supplierId) 
		{
			Supplier s=new Supplier();
			s.setSupplierId(supplierId);
			sessionFactory.getCurrentSession().delete(s);
		}
		@SuppressWarnings("unchecked")
		public Supplier getSupplierByName(String supplierName) 
		{
			List<Supplier> slist = sessionFactory.getCurrentSession().createQuery("from Supplier where supplierName = "+"'"+supplierName+"'").list();
			return slist.get(0);
		}
	}
