package com.firgurinshop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperProductSize implements RowMapper<ProductSize>{

	@Override
	public ProductSize mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductSize productSize = new ProductSize();
		productSize.setProduct_size(rs.getString("product_size"));
		return productSize;
	}

}
