package com.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name ="producers")
public class Producers {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ProducerId")
	private int producerId;
	@Column(name="ProducerName")
	private String producerName;
	@Column(name="Status")
	private Boolean status;
	@OneToMany(mappedBy = "producers")
	private Set<Products> listProducer;
	public Producers() {
		// TODO Auto-generated constructor stub
	}
	public Producers(int producerId, String producerName, Boolean status, Set<Products> listProducer) {
		this.producerId = producerId;
		this.producerName = producerName;
		this.status = status;
		this.listProducer = listProducer;
	}
	public int getProducerId() {
		return producerId;
	}
	public void setProducerId(int producerId) {
		this.producerId = producerId;
	}
	public String getProducerName() {
		return producerName;
	}
	public void setProducerName(String producerName) {
		this.producerName = producerName;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public Set<Products> getListProducer() {
		return listProducer;
	}
	public void setListProducer(Set<Products> listProducer) {
		this.listProducer = listProducer;
	}
}
