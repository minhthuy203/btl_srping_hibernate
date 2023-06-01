package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orderDetails")
public class OrderDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private int id;
	@Column(name = "Quantity")
	private int quantity;
	@Column(name = "color")
	private int color;
	@Column(name = "size")
	private int size;
	
	@ManyToOne
	@JoinColumn(name = "Orders_Id", referencedColumnName = "OrderId")
	private Orders orders;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "Product_detail_ID", referencedColumnName = "ProductDetail_id")
	private ProductDetail proOrderDetail;

	public OrderDetails() {
		// TODO Auto-generated constructor stub
	}

	
	public OrderDetails(int quantity, int color, int size, Orders orders, ProductDetail proOrderDetail) {
		this.quantity = quantity;
		this.color = color;
		this.size = size;
		this.orders = orders;
		this.proOrderDetail = proOrderDetail;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public int getColor() {
		return color;
	}


	public void setColor(int color) {
		this.color = color;
	}


	public int getSize() {
		return size;
	}


	public void setSize(int size) {
		this.size = size;
	}


	public Orders getOrders() {
		return orders;
	}


	public void setOrders(Orders orders) {
		this.orders = orders;
	}


	public ProductDetail getProOrderDetail() {
		return proOrderDetail;
	}


	public void setProOrderDetail(ProductDetail proOrderDetail) {
		this.proOrderDetail = proOrderDetail;
	}

}
