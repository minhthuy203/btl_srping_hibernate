package com.entity;

import java.util.Set;

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
@Table(name ="product_detail")
public class ProductDetail {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="ProductDetail_id")
	private int proDetailId;
	@ManyToOne
	@JoinColumn(name="Pro_Id", referencedColumnName = "Id")
	private Products productDeatil;
	
	@OneToMany(mappedBy ="listProColor", fetch = FetchType.EAGER)
	private Set<ProductColors> listColor;
	
	@OneToMany(mappedBy = "proSize", fetch = FetchType.EAGER)
	private Set<ProductSizes> listSize;
	@OneToMany(mappedBy = "proOrderDetail", fetch = FetchType.EAGER)
	private Set<OrderDetails> listOrderDetail;
	
	public ProductDetail() {
		// TODO Auto-generated constructor stub
	}

	public ProductDetail(int proDetailId, Products productDeatil, Set<ProductColors> listColor,
			Set<ProductSizes> listSize, Set<OrderDetails> listOrderDetail) {
		this.proDetailId = proDetailId;
		this.productDeatil = productDeatil;
		this.listColor = listColor;
		this.listSize = listSize;
		this.listOrderDetail = listOrderDetail;
	}

	public int getProDetailId() {
		return proDetailId;
	}

	public void setProDetailId(int proDetailId) {
		this.proDetailId = proDetailId;
	}

	public Products getProductDeatil() {
		return productDeatil;
	}

	public void setProductDeatil(Products productDeatil) {
		this.productDeatil = productDeatil;
	}

	public Set<ProductColors> getListColor() {
		return listColor;
	}

	public void setListColor(Set<ProductColors> listColor) {
		this.listColor = listColor;
	}

	public Set<ProductSizes> getListSize() {
		return listSize;
	}

	public void setListSize(Set<ProductSizes> listSize) {
		this.listSize = listSize;
	}

	public Set<OrderDetails> getListOrderDetail() {
		return listOrderDetail;
	}

	public void setListOrderDetail(Set<OrderDetails> listOrderDetail) {
		this.listOrderDetail = listOrderDetail;
	}
	
	
}
