package com.firgurinshop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.firgurinshop.Entity.Brand;
import com.firgurinshop.Entity.Category;
import com.firgurinshop.Entity.MapperBrand;
import com.firgurinshop.Entity.MapperCategory;

@Repository
public class CategoryDao extends BaseDao{

	public List<Category> getCategory() {
		List<Category> list = new ArrayList<Category>();
		String sql = "SELECT * FROM tbl_category_product";
		list = _jdbcTemplate.query(sql, new MapperCategory());
		return list;
	}


	public List<Category> getDataDetailCategory(String id) {
		List<Category> list = new ArrayList<Category>();
		String sql = "SELECT tbl_category_product.category_desc, tbl_category_product.category_status,tbl_category_product.created_at, tbl_category_product.updated_at, tbl_category_product.category_id, tbl_product.category_id, tbl_category_product.category_name\r\n"
				+ "				FROM tbl_category_product, tbl_product\r\n"
				+ "				WHERE tbl_product.category_id = tbl_category_product.category_id\r\n"
				+ "				AND tbl_product.product_id = " + id;
		list = _jdbcTemplate.query(sql, new MapperCategory());
		return list;
	}
	
	
	public List<Category> getDetailCategory(String id) {
		List<Category> list = new ArrayList<Category>();
		String sql = "SELECT * FROM tbl_category_product WHERE category_id = " + id;
		list = _jdbcTemplate.query(sql, new MapperCategory());
		return list;
		
	}

	
}
