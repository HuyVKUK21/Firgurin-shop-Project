package com.firgurinshop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.firgurinshop.Entity.Cart;
import com.firgurinshop.Entity.MapperCart;
import com.firgurinshop.Entity.MapperProduct;
import com.firgurinshop.Entity.Product;

@Repository
public class CartDao extends BaseDao{

	public int AddCart(Cart cart) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO tbl_cart (category_id, product_id, user_id, product_name,quantity, user_email, created_at, updated_at) ");
		sql.append("VALUES ( ");
		sql.append("	'"+cart.getCategory_id()+"', ");
		sql.append("	'"+cart.getProduct_id()+"', ");
		sql.append("    '"+cart.getUser_id()+"', ");
		sql.append(" '" + cart.getProduct_name().replace("'", "''") + "', ");
		sql.append("    '"+cart.getQuantity()+"', ");
		sql.append("    '"+cart.getUser_email()+"', ");
		sql.append("    NULL, ");
		sql.append("    NULL ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
	

	public List<Cart> getInfoCart(String user_id) {
		List<Cart> list = new ArrayList<Cart>();
		String sql = "SELECT * \r\n"
				+ "FROM tbl_cart, tbl_product\r\n"
				+ "			WHERE tbl_cart.product_id = tbl_product.product_id	AND tbl_cart.user_id = " + user_id;
		list = _jdbcTemplate.query(sql, new MapperCart());
		return list;
		
	}
	
	public int updateCart(String cart_id) {
		String sql = "UPDATE tbl_cart SET quantity = quantity-1 WHERE cart_id = ? ";
		int update = _jdbcTemplate.update(sql, cart_id);
		return update;
		
	}
	
	public int updateCartAdd(String cart_id) {
		String sql = "UPDATE tbl_cart SET quantity = quantity+1 WHERE cart_id = ? ";
		int update = _jdbcTemplate.update(sql, cart_id);
		return update;
		
	}
	
	public int deletetoCart(String cart_id) {
		String sql = "DELETE FROM tbl_cart where cart_id = ? ";
		int update = _jdbcTemplate.update(sql, cart_id);
		return update;
		
	}
}
