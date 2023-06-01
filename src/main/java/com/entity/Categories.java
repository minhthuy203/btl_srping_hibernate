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
@Table(name = "categories")
public class Categories {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "CateId")
	private int cateId;
	@Column(name = "CateName")
	private String cateName;
	@Column(name = "Status")
	private Boolean status;
	@Column(name="Tag")
	private String tag;
	@OneToMany(mappedBy = "cate", fetch = FetchType.EAGER)
	private Set<Products> listCate;
	public Categories() {
		// TODO Auto-generated constructor stub
	}
	
	public Categories(int cateId, String cateName, Boolean status, String tag, Set<Products> listCate) {
		this.cateId = cateId;
		this.cateName = cateName;
		this.status = status;
		this.tag = tag;
		this.listCate = listCate;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public int getCateId() {
		return cateId;
	}
	public void setCateId(int cateId) {
		this.cateId = cateId;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public Set<Products> getListCate() {
		return listCate;
	}
	public void setListCate(Set<Products> listCate) {
		this.listCate = listCate;
	}
	
	
}
