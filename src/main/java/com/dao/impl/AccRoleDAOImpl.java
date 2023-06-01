package com.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.AccRoleDAO;
import com.entity.Account;
import com.entity.Accounts_Roles;
import com.entity.Role;

@Repository
public class AccRoleDAOImpl implements AccRoleDAO{
@Autowired
private SessionFactory sessionFactory;

	@Override
	public boolean insertAccRole(Accounts_Roles accRole) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.save(accRole);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		finally {
			session.close();
		}
		return false;
	}
	@Override
	public boolean register(Account acc) {
		Session session = sessionFactory.openSession();
		acc.setPassword(BCrypt.hashpw(acc.getPassword(), BCrypt.gensalt(12)));
		try {
			session.beginTransaction();
			session.save(acc);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally {
			session.close();
		}
		return false;
	}
	@Override
	public Role getRoleByName(String roleName) {
		Session session = sessionFactory.openSession();
		try {
			Role role = (Role) session.createQuery("from Role where roleName =: roleName").setParameter("roleName", roleName).uniqueResult();
			return role;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}

}
