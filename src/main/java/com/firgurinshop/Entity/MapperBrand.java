package com.firgurinshop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBrand implements RowMapper<Brand>{

	@Override
	public Brand mapRow(ResultSet rs, int rowNum) throws SQLException {
		Brand brand = new Brand();
		brand.setBrand_id(rs.getInt("brand_id"));
		brand.setBrand_name(rs.getString("brand_name"));
		brand.setBrand_desc(rs.getString("brand_desc"));
		brand.setBrand_status(rs.getInt("brand_status"));
		brand.setCreated_at(rs.getString("created_at"));
		brand.setUpdated_at(rs.getString("updated_at"));
		return brand;
	}

}
