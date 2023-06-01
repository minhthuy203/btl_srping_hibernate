package com.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.CartDAO;
import com.entity.OrderDetails;
@Repository
public class CartDAOImpl implements CartDAO {
	@Autowired
	private SessionFactory sessionFactory;


	@Override
	public List<OrderDetails> getAll(int orderId) {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from OrderDetails where Orders_Id =: id").setParameter("id", orderId).list();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}
	@Override
	public boolean addToCart(OrderDetails proOrderDetail) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.save(proOrderDetail);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public boolean updateCart(OrderDetails proOrderDetail) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.update(proOrderDetail);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public OrderDetails getIdOfOrderDetail(Integer orderId) {
		Session session = sessionFactory.openSession();
		try {
			OrderDetails orderDetail = session.get(OrderDetails.class, orderId);
			return orderDetail;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	@Override
	public boolean delateCart(Integer id) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.delete(getIdOfOrderDetail(id));
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return false;
	
	}

	

}
