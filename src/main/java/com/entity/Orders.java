package com.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Orders {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "OrderId")
	private int orderId;
	@Column(name ="Created_at", columnDefinition = "default CURRENT_TIMESTAMP")
	private Date createAt;
	@Column(name="Status",columnDefinition = "default '1'")
	private Boolean status;
	@OneToMany(mappedBy = "orders" ,fetch=FetchType.EAGER)
	private	List<OrderDetails> orderDeatil;
	@ManyToOne
	@JoinColumn(name="Account_Id", referencedColumnName = "AccountId")
	private Account accounts;
	public Orders() {
		// TODO Auto-generated constructor stub
	}
	
	public Orders(int orderId, Date createAt, Boolean status, List<OrderDetails> orderDeatil, Account accounts) {
		this.orderId = orderId;
		this.createAt = createAt;
		this.status = status;
		this.orderDeatil = orderDeatil;
		this.accounts = accounts;
	}

	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public Date getCreateAt() {
		return createAt;
	}
	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public List<OrderDetails> getOrders() {
		return orderDeatil;
	}
	public void setOrders(List<OrderDetails> orders) {
		this.orderDeatil = orders;
	}
	public Account getAccounts() {
		return accounts;
	}
	public void setAccounts(Account accounts) {
		this.accounts = accounts;
	}
}
