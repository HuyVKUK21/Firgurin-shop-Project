package com.firgurinshop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.firgurinshop.Entity.Brand;
import com.firgurinshop.Entity.MapperBrand;

@Repository
public class BrandDao extends BaseDao{
	public List<Brand> getDataDetailBrand(String id) {
		List<Brand> list = new ArrayList<Brand>();
		String sql = "SELECT * FROM tbl_brand_product, tbl_product WHERE tbl_product.brand_id = tbl_brand_product.brand_id\r\n"
				+ "AND tbl_product.product_id = " + id;
		list = _jdbcTemplate.query(sql, new MapperBrand());
		return list;
		
	}
	
	public List<Brand> getDetailBrand() {
		List<Brand> list = new ArrayList<Brand>();
		String sql = "SELECT * FROM tbl_brand_product ";
		list = _jdbcTemplate.query(sql, new MapperBrand());
		return list;
		
	}
}
