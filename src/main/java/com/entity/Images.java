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
@Table(name = "images")
public class Images {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ImageId")
	private int imgId;
	@Column(name = "ImagerName")
	private String imgName;
	@ManyToOne
	@JoinColumn(name="Pro_Id", referencedColumnName = "Id")
	private Products imagePro;
	public Images() {
		// TODO Auto-generated constructor stub
	}
	public Images(int imgId, String imgName, Products imagePro) {
		this.imgId = imgId;
		this.imgName = imgName;
		this.imagePro = imagePro;
	}
	public int getImgId() {
		return imgId;
	}
	public void setImgId(int imgId) {
		this.imgId = imgId;
	}
	public String getImgName() {
		return imgName;
	}
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public Products getImagePro() {
		return imagePro;
	}
	public void setImagePro(Products imagePro) {
		this.imagePro = imagePro;
	}
}
