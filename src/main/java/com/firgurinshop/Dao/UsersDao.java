package com.firgurinshop.Dao;

import org.springframework.stereotype.Repository;

import com.firgurinshop.Entity.MapperUser;
import com.firgurinshop.Entity.User;

@Repository
public class UsersDao extends BaseDao{
	public int AddAccount(User user) {
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO tbl_user (user_email, user_password, user_name, user_phone, user_address, created_at, updated_at, verified) ");
		sql.append("VALUES ( ");
		sql.append("	'"+user.getUser_email()+"', ");
		sql.append("    '"+user.getUser_password()+"', ");
		sql.append("    '"+user.getUser_name()+"', ");
		sql.append("    '"+user.getUser_phone()+"', ");
		sql.append("    NULL, ");
		sql.append("    NULL, ");
		sql.append("    NULL, ");
		sql.append("    1 ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	
	public User getUser(User user) {
		String sql = "SELECT * FROM tbl_user WHERE user_email = '"+user.getUser_email()+"'";
		User result = _jdbcTemplate.queryForObject(sql, new MapperUser());
		return result;
	}
}


