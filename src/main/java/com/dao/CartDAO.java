package com.dao;

import java.util.List;

import com.entity.OrderDetails;

public interface CartDAO {
	public List<OrderDetails> getAll(int i);
	public boolean addToCart(OrderDetails proOrderDetail);
	public boolean updateCart(OrderDetails proOrderDetail);
	public OrderDetails getIdOfOrderDetail(Integer orderId);
	public boolean delateCart(Integer id);
	
}
