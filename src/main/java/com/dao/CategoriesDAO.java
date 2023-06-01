package com.dao;

import java.util.List;

import com.entity.Categories;

public interface CategoriesDAO {
	public List<Categories> getListCategories();
	public List<Categories> getListCategoriesById(Integer cateId);
}
