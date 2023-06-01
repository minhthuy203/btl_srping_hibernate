package com.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.AccountDAO;
import com.entity.Account;
@Repository
public class AccountDAOImpl implements AccountDAO{
@Autowired
private SessionFactory sessionFactory;
	@Override
	public Account findByUserName(String username) {
		Session session = sessionFactory.openSession();
		try {
			Account account = (Account) session.createQuery("from Account where accountName =: uname or email =:uname").setParameter("uname", username).uniqueResult();
			return account;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}
	@Override
	public Account findById(Integer accId) {
		Session session = sessionFactory.openSession();
		try {
			Account account = session.get(Account.class, accId);
			return account;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}
	

}
