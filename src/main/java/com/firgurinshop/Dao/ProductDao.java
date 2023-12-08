package com.firgurinshop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.firgurinshop.Entity.MapperProduct;
import com.firgurinshop.Entity.Product;

@Repository
public class ProductDao extends BaseDao {
	public List<Product> getDataProduct() {
		List<Product> list = new ArrayList<Product>();
		String sql = "SELECT * FROM tbl_product";
		list = _jdbcTemplate.query(sql, new MapperProduct());
		return list;
	}
	
	public List<Product> getDataProductAvailable() {
		List<Product> list = new ArrayList<Product>();
		String sql = "SELECT * FROM tbl_product WHERE category_id = 2";
		list = _jdbcTemplate.query(sql, new MapperProduct());
		return list;
	}
	
	
	public List<Product> getDataDetailProduct(String id) {
		List<Product> list = new ArrayList<Product>();
		String sql = "SELECT * FROM tbl_product WHERE product_id = " + id;
		list = _jdbcTemplate.query(sql, new MapperProduct());
		return list;
	}
	
	public List<Product> getDataDetailProductPortfolio(String id) {
		List<Product> list = new ArrayList<Product>();
		String sql = "SELECT * FROM tbl_product WHERE category_id = " + id;
		list = _jdbcTemplate.query(sql, new MapperProduct());
		return list;
	}
	

	
	public List<Product> tradeMarkFilter(String brand_id, String product_price, String product_size, String sort_product) {
		List<Product> list = new ArrayList<Product>();
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM tbl_product WHERE ");

		 if (brand_id != null && !brand_id.isEmpty()) {
		        sql.append("brand_id = '").append(brand_id).append("'");
		    }

		    // Thêm điều kiện cho product_price
		    if (product_price != null && !product_price.isEmpty()) {
		        sql.append("product_price = '").append(product_price).append("'");
		    }

		    // Thêm điều kiện cho product_size
		    if (product_size != null && !product_size.isEmpty()) {
		        sql.append("product_size = '").append(product_size).append("'");
		    }

		 
		list = _jdbcTemplate.query(sql.toString(), new MapperProduct());
		return list;
	}
}
