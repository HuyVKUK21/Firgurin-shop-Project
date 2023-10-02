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
}
