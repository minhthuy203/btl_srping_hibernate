package com.entity;

import java.util.Date;
import java.util.List;
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
@Table(name = "products")
public class Products {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id")
	private int productId;
	@Column(name = "ProductName")
	private String productName;
	@Column(name = "Status")
	private Boolean status;
	@Column(name = "Price")
	private Float price;
	@Column(name = "Sala_price")
	private Float salePrice;
	@Column(name = "Discription")
	private String discription;
	@Column(name = "Create_at")
	private Date create_at;
	@ManyToOne
	@JoinColumn(name = "Category_ID", referencedColumnName = "CateId")
	private Categories cate;

	@ManyToOne
	@JoinColumn(name = "Producer_Id", referencedColumnName = "ProducerId")
	private Producers producers;

	@OneToMany(mappedBy = "productDeatil", fetch = FetchType.EAGER)
	private Set<ProductDetail> listProDetail;

	@OneToMany(mappedBy = "imagePro", fetch = FetchType.EAGER)
	private List<Images> listImages;

	public Products() {
		// TODO Auto-generated constructor stub
	}

	public Products(int productId, String productName, Boolean status, Float price, Float salePrice, String discription,
			Date create_at, Categories cate, Producers producers, Set<ProductDetail> listProDetail,
			List<Images> listImages) {
		this.productId = productId;
		this.productName = productName;
		this.status = status;
		this.price = price;
		this.salePrice = salePrice;
		this.discription = discription;
		this.create_at = create_at;
		this.cate = cate;
		this.producers = producers;
		this.listProDetail = listProDetail;
		this.listImages = listImages;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Float getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(Float salePrice) {
		this.salePrice = salePrice;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public Categories getCate() {
		return cate;
	}

	public void setCate(Categories cate) {
		this.cate = cate;
	}

	public Producers getProducers() {
		return producers;
	}

	public void setProducers(Producers producers) {
		this.producers = producers;
	}

	public Date getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Date create_at) {
		this.create_at = create_at;
	}

	public Set<ProductDetail> getListProDetail() {
		return listProDetail;
	}

	public void setListProDetail(Set<ProductDetail> listProDetail) {
		this.listProDetail = listProDetail;
	}

	public List<Images> getListImages() {
		return listImages;
	}

	public void setListImages(List<Images> listImages) {
		this.listImages = listImages;
	}

}
