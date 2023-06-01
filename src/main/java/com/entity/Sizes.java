package com.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "sizes")
public class Sizes {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "SizeId")
	private int sizeId;
	@Column(name = "SizeName")
	private String sizeName;
	@OneToMany(mappedBy = "sizes", fetch = FetchType.EAGER)
	private Set<ProductSizes> sizes;
	public Sizes() {
		// TODO Auto-generated constructor stub
	}
	public Sizes(int sizeId, String sizeName, Set<ProductSizes> sizes) {
		this.sizeId = sizeId;
		this.sizeName = sizeName;
		this.sizes = sizes;
	}
	public int getSizeId() {
		return sizeId;
	}
	public void setSizeId(int sizeId) {
		this.sizeId = sizeId;
	}
	public String getSizeName() {
		return sizeName;
	}
	public void setSizeName(String sizeName) {
		this.sizeName = sizeName;
	}
	public Set<ProductSizes> getSizes() {
		return sizes;
	}
	public void setSizes(Set<ProductSizes> sizes) {
		this.sizes = sizes;
	}
}
