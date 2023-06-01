package com.dao;

import java.util.List;

import com.entity.OrderDetails;
import com.entity.Orders;

public interface OrderDAO {
	public List<OrderDetails> insetOrder(Integer orderId);
	public Orders getOrder(Integer orderId);
	public boolean insertOrder(Orders order);
	public List<OrderDetails> getTopTrending();
//	public List<OrderDetails> findByAll(int proDetailId, int orderId);
	public OrderDetails findById(int orderId, int productDetail, int id);
}
