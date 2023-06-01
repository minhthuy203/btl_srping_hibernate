package com.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "products_sizes")
public class ProductSizes {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PS_id")
	private int psId;
	@ManyToOne
	@JoinColumn(name = "Product_detail_ID", referencedColumnName = "ProductDetail_id")
	private ProductDetail proSize;
	@ManyToOne
	@JoinColumn(name="Size_ID", referencedColumnName = "SizeId")
	private Sizes sizes;
	
	public ProductSizes() {
		// TODO Auto-generated constructor stub
	}

	public ProductSizes(int psId, ProductDetail proSize, Sizes sizes) {
		this.psId = psId;
		this.proSize = proSize;
		this.sizes = sizes;
	}

	public int getPsId() {
		return psId;
	}

	public void setPsId(int psId) {
		this.psId = psId;
	}

	public ProductDetail getProSize() {
		return proSize;
	}

	public void setProSize(ProductDetail proSize) {
		this.proSize = proSize;
	}

	public Sizes getSizes() {
		return sizes;
	}

	public void setSizes(Sizes sizes) {
		this.sizes = sizes;
	}
}
