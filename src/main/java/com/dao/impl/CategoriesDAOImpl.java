package com.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.CategoriesDAO;
import com.entity.Categories;

@Repository
public class CategoriesDAOImpl implements CategoriesDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Categories> getListCategories() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Categories").list();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			session.close();
		}
		return null;
	}

	@Override
	public List<Categories> getListCategoriesById(Integer cateId) {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Categories where cateId =: cateId").setParameter("cateId", cateId).list();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			session.close();
		}
		return null;
	}

}
