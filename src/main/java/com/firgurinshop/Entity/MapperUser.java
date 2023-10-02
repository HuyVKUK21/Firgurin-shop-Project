package com.firgurinshop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperUser implements RowMapper<User>{

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setUser_id(rs.getInt("user_id"));
		user.setUser_email(rs.getString("user_email"));
		user.setUser_password(rs.getString("user_password"));
		user.setUser_name(rs.getString("user_name"));
		user.setUser_phone(rs.getInt("user_phone"));
		user.setUser_address(rs.getString("user_address"));
		user.setCreated_at(rs.getString("created_at"));
		user.setUpdate_at(rs.getString("update_at"));
		user.setVerified(rs.getInt("verified"));
		return user;
	}
	

}
