package com.firgurinshop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.firgurinshop.Entity.Brand;
import com.firgurinshop.Entity.Cart;
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
	
	public List<Brand> getDataBrand(String brand_id) {
		List<Brand> list = new ArrayList<Brand>();
		String sql = "SELECT * FROM tbl_brand_product WHERE brand_id = " + brand_id;
		list = _jdbcTemplate.query(sql, new MapperBrand());
		return list;
	}
	
	
	
	public List<Brand> getDetailBrand() {
		List<Brand> list = new ArrayList<Brand>();
		String sql = "SELECT * FROM tbl_brand_product ";
		list = _jdbcTemplate.query(sql, new MapperBrand());
		return list;
		
	}
	
	public int addBrand(Brand brand) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO tbl_brand_product (brand_name,brand_desc, brand_status, created_at, updated_at)");
		sql.append("VALUES ( ");
		sql.append("	'"+brand.getBrand_name()+"', ");
		sql.append("	'"+brand.getBrand_desc()+"', ");
		sql.append("    '"+brand.getBrand_status()+"', ");
		sql.append("    NULL, ");
		sql.append("    NULL ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public int updatestatusBrand(String brandId) {
		String sql = "UPDATE tbl_brand_product SET brand_status = 1 WHERE brand_id = ? ";
		int update = _jdbcTemplate.update(sql, brandId);
		return update;
		
	}
	
	public int updatestatusBrandDeactivated(String brandId) {
		String sql = "UPDATE tbl_brand_product SET brand_status = 0 WHERE brand_id = ? ";
		int update = _jdbcTemplate.update(sql, brandId);
		return update;
		
	}
}
