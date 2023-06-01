package com.dao;

import java.util.List;

import com.entity.ProductDetail;
import com.entity.Products;

public interface ProductDAO {
	public List<Products> getListProduct();
	public ProductDetail getProDetail(Integer id);

}
