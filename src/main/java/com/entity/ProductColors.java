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
@Table(name = "products_colors")
public class ProductColors {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PC_id")
	private int pcId;
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="Product_detail_ID", referencedColumnName = "ProductDetail_id")
	private ProductDetail listProColor;
	@ManyToOne
	@JoinColumn(name="Color_ID", referencedColumnName = "ColorId")
	private Colors color;
	
	public ProductColors() {
		// TODO Auto-generated constructor stub
	}
	public ProductColors(int pcId, ProductDetail listProColor, Colors color) {
		this.pcId = pcId;
		this.listProColor = listProColor;
		this.color = color;
	}
	public int getPcId() {
		return pcId;
	}
	public void setPcId(int pcId) {
		this.pcId = pcId;
	}
	public ProductDetail getListProColor() {
		return listProColor;
	}
	public void setListProColor(ProductDetail listProColor) {
		this.listProColor = listProColor;
	}
	public Colors getColor() {
		return color;
	}
	public void setColor(Colors color) {
		this.color = color;
	}
}
