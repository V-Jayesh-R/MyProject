package com.helloworld.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.helloworld.dao.UserDAO;
import com.helloworld.model.Cart;
import com.helloworld.model.User;

@Repository
public class UserDAOImpl implements UserDAO{
	@Autowired
	SessionFactory sessionFactory;

	public void addUser(User user) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		  session.saveOrUpdate(user);

	  
	  Cart cart=new Cart();
	  cart.setCartId(user.getUserId());
	  cart.setUserId(user.getUserId());
	  session.saveOrUpdate(cart);
	  
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