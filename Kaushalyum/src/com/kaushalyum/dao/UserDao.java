package com.kaushalyum.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kaushalyum.entities.Userdetail;

@Repository
public class UserDao {

	@Autowired
	private SessionFactory sessionFactory ;
	
	public void insertUser(Userdetail userTbl) {
			Session session = sessionFactory.getCurrentSession();
			session.save(userTbl);
		}
	
	public Userdetail getUserDetails(String emailId) {
		Session session = sessionFactory.getCurrentSession();
		Userdetail userDetails = (Userdetail) session.get(Userdetail.class, emailId);
		return userDetails;
	}
	
	public void updateUserInfo(Userdetail user) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
	
	}
	public void deleteUser(String emailId) {
		Session session = sessionFactory.getCurrentSession();
		Userdetail userDetails = (Userdetail) session.get(Userdetail.class, emailId);
		session.delete(userDetails);
			
	}
	
	public List<Userdetail> getAllUsers() {
		Session session = sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(Userdetail.class);
		return criteria.list();
	}
	
}
