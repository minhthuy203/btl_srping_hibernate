package com.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.ProductDAO;
import com.entity.ProductDetail;
import com.entity.Products;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Products> getListProduct() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Products").list();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public ProductDetail getProDetail(Integer id) {
		Session session = sessionFactory.openSession();
		try {
			ProductDetail prodetail = session.get(ProductDetail.class, id);
			return prodetail;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}


}
