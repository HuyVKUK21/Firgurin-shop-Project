package com.firgurinshop.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;

public class BaseDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
}
