package com.firgurinshop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.firgurinshop.Entity.MapperProduct;
import com.firgurinshop.Entity.MapperProductSize;
import com.firgurinshop.Entity.Product;
import com.firgurinshop.Entity.ProductSize;

@Repository
public class ProductSizeDao extends BaseDao{
	public List<ProductSize> productSize() {
		List<ProductSize> list = new ArrayList<ProductSize>();
		String sql = "SELECT DISTINCT product_size\r\n"
				+ "FROM tbl_product\r\n"
				+ "ORDER BY CONVERT(SUBSTRING_INDEX(product_size, '/', -1), SIGNED) ASC;\r\n";
		list = _jdbcTemplate.query(sql, new MapperProductSize());
		return list;
	}
}
