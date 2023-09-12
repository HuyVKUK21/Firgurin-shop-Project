package com.firgurinshop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperProduct implements RowMapper<Product>{

	@Override
	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		Product product = new Product();
		product.setProduct_id(rs.getInt("product_id"));
		product.setCategory_id(rs.getInt("category_id"));
		product.setBrand_id(rs.getInt("brand_id"));
		product.setProduct_name(rs.getString("product_name"));
		product.setProduct_desc(rs.getString("product_desc"));
		product.setProduct_series(rs.getString("product_series"));
		product.setProduct_size(rs.getString("product_size"));
		product.setProduct_proportion(rs.getString("product_proportion"));
		product.setProduct_date(rs.getString("product_date"));
		product.setProduct_price(rs.getInt("product_price"));
		product.setProduct_price_update(rs.getString("product_price_update"));
		product.setProduct_image(rs.getString("product_image"));
		product.setProduct_image2(rs.getString("product_image2"));
		product.setProduct_image3(rs.getString("product_image3"));
		product.setProduct_image4(rs.getString("product_image4"));
		product.setProduct_status(rs.getInt("product_status"));
		product.setCreated_at(rs.getString("created_at"));
		product.setUpdated_at(rs.getString("updated_at"));
		return product;
	}

}
