package com.dto;

public class CartOrderDTO {
	private int proDetailId;
	private int color;
	private int size;
	private int quantity;

	public CartOrderDTO() {
		// TODO Auto-generated constructor stub
	}

	public CartOrderDTO(int proDetailId, int color, int size, int quantity) {
		this.proDetailId = proDetailId;
		this.color = color;
		this.size = size;
		this.quantity = quantity;
	}

	
	public int getProDetailId() {
		return proDetailId;
	}

	public void setProDetailId(int proDetailId) {
		this.proDetailId = proDetailId;
	}

	

	public int getColor() {
		return color;
	}

	public void setColor(int color) {
		this.color = color;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	
}
