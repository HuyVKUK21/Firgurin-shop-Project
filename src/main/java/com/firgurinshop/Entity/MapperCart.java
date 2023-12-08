package com.firgurinshop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCart implements RowMapper<Cart>{

	@Override
	public Cart mapRow(ResultSet rs, int rowNum) throws SQLException {
		Cart cart = new Cart();
		cart.setCart_id(rs.getInt("cart_id"));
		cart.setCategory_id(rs.getInt("category_id"));
		cart.setProduct_id(rs.getInt("product_id"));
		cart.setUser_id(rs.getInt("user_id"));
		cart.setProduct_name(rs.getString("product_name"));
		cart.setProduct_image(rs.getString("product_image"));
		cart.setProduct_price(rs.getString("product_price"));
		cart.setQuantity(rs.getInt("quantity"));
		cart.setUser_email(rs.getString("user_email"));
		cart.setCreated_at(rs.getString("created_at"));
		cart.setUpdated_at(rs.getString("updated_at"));
		return cart;
	}
	

}
