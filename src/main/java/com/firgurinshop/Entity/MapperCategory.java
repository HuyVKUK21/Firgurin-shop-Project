package com.firgurinshop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCategory implements RowMapper<Category>{

	@Override
	public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
		Category category = new Category();
		category.setCategory_id(rs.getInt("category_id"));
		category.setCategory_name(rs.getString("category_name"));
		category.setCategory_desc(rs.getString("category_desc"));
		category.setCategory_status(rs.getInt("category_status"));
		category.setCreated_at(rs.getString("created_at"));
		category.setUpdated_at(rs.getString("updated_at"));
		return category;
	}
}
