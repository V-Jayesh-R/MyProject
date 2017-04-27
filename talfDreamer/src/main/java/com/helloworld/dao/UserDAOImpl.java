package com.helloworld.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.helloworld.model.BillingAddress;
import com.helloworld.model.ShippingAddress;
import com.helloworld.model.User;

@Repository
public class UserDAOImpl implements UserDAO {

	
	
		@Autowired
		SessionFactory sessionFactory;

		public void addUser(User user) {
			
			Session session=sessionFactory.getCurrentSession();
			  session.saveOrUpdate(user);

		  
		

			
		}

		@SuppressWarnings("unchecked")
		public List<User> listUsers() {
			// TODO Auto-generated method stub
			List<User> userList = sessionFactory.getCurrentSession().createQuery("from User").getResultList();
			return userList;
		}
		
		@SuppressWarnings("unchecked")
		public User getUserById(int userId) {
			// TODO Auto-generated method stub
			List<User> userList = sessionFactory.getCurrentSession().createQuery("from User where userId = "+userId).getResultList();
			return userList.get(0);
		}

		

		@SuppressWarnings("unchecked")
		public User getUserByName(String userName) {
			// TODO Auto-generated method stub
			List<User> userList = sessionFactory.getCurrentSession().createQuery("from User where userName = "+"'"+userName+"'").getResultList();
			return userList.get(0);
		}

		
		


	
}
