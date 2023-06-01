package com.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.OrderDAO;
import com.entity.OrderDetails;
import com.entity.Orders;

@Repository
public class OrderDAOImpl implements OrderDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Orders getOrder(Integer orderId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrderDetails> insetOrder(Integer orderId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertOrder(Orders order) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.save(order);
			session.getTransaction().commit();
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		} finally {
			session.close();
		}
		return false;
	}

	@Override
	public List<OrderDetails> getTopTrending() {
		Session session = sessionFactory.openSession();

		return null;
	}

//	@Override
//	public List<OrderDetails> findByAll(int proDetailId, int orderId) {
//		Session session = sessionFactory.openSession();
//		try {
//
//			List<OrderDetails> orderDetails = session
//					.createQuery("from OrderDetails where Product_detail_ID=: pd and Id =: orderId ")
//					.setParameter("pd", proDetailId).setParameter("orderId", orderId).list();
//
//			return orderDetails;
//
//		} catch (Exception e) {
//			e.printStackTrace();
//
//		} finally {
//			session.close();
//		}
//		return null;
//	}

	@Override
	public OrderDetails findById(int orderId, int proDetailId, int id) {
		Session session = sessionFactory.openSession();
		try {

			OrderDetails orderDetails =(OrderDetails) session.createQuery("from OrderDetails where Product_detail_ID =: idPro and Orders_Id =: orderId and Id =:id ")
					.setParameter("idPro", proDetailId).setParameter("orderId", orderId).setParameter("id", id).uniqueResult();
			return orderDetails;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
}
