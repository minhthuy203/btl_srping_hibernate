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
@Table(name = "colors")
public class Colors {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ColorId")
	private int colorId;
	@Column(name = "ColorName")
	private String colorName;
	@OneToMany(mappedBy = "color", fetch = FetchType.EAGER)
	private Set<ProductColors> color;
	public Colors() {
		// TODO Auto-generated constructor stub
	}
	public Colors(int colorId, String colorName, Set<ProductColors> color) {
		this.colorId = colorId;
		this.colorName = colorName;
		this.color = color;
	}
	public int getColorId() {
		return colorId;
	}
	public void setColorId(int colorId) {
		this.colorId = colorId;
	}
	public String getColorName() {
		return colorName;
	}
	public void setColorName(String colorName) {
		this.colorName = colorName;
	}
	public Set<ProductColors> getColor() {
		return color;
	}
	public void setColor(Set<ProductColors> color) {
		this.color = color;
	}
	
}
