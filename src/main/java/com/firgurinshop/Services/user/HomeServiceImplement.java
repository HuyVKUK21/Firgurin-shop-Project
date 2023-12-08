package com.firgurinshop.Services.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firgurinshop.Dao.BrandDao;
import com.firgurinshop.Dao.CartDao;
import com.firgurinshop.Dao.CategoryDao;
import com.firgurinshop.Dao.ProductDao;
import com.firgurinshop.Dao.ProductSizeDao;
import com.firgurinshop.Entity.Brand;
import com.firgurinshop.Entity.Cart;
import com.firgurinshop.Entity.Category;
import com.firgurinshop.Entity.Product;
import com.firgurinshop.Entity.ProductSize;


@Service
public class HomeServiceImplement implements IHomeService {
	@Autowired
	private ProductDao productDao;
	@Autowired
	private BrandDao brandDao;
	@Autowired
	private CartDao cartDao;
	@Autowired
	private ProductSizeDao productSizeDao;
	
	public List<Product> getDataProduct() {
		return productDao.getDataProduct();
	}
	
	@Autowired
	private CategoryDao categoryDao;
	public List<Category> getCategory() {
		return categoryDao.getCategory();
	}
	@Override
	public List<Product> getDataDetailProduct(String id) {
		// TODO Auto-generated method stub
		return productDao.getDataDetailProduct(id);
	}
	@Override
	public List<Category> getDataDetailCategory(String id) {
		// TODO Auto-generated method stub
		return categoryDao.getDataDetailCategory(id);
	}


	@Override
	public List<Brand> getDataDetailBrand(String id) {
		// TODO Auto-generated method stub
		return brandDao.getDataDetailBrand(id);
	}
	@Override
	public List<Category> getDetailCategory(String id) {
		// TODO Auto-generated method stub
		return categoryDao.getDetailCategory(id);
	}
	@Override
	public List<Brand> getDetailBrand() {
		// TODO Auto-generated method stub
		return brandDao.getDetailBrand();
	}
	@Override
	public List<Product> getDataDetailProductPortfolio(String id) {
		// TODO Auto-generated method stub
		return productDao.getDataDetailProductPortfolio(id);
	}
	
	

	@Override
	public List<Cart> getInfoCart(String user_id) {
		// TODO Auto-generated method stub
		return cartDao.getInfoCart(user_id);
	}
	@Override
	public int updateCart(String cart_id) {
		return cartDao.updateCart(cart_id);
	}
	@Override
	public int updateCartAdd(String cart_id) {
		// TODO Auto-generated method stub
		return cartDao.updateCartAdd(cart_id);
	}
	@Override
	public int deletetoCart(String cart_id) {
		// TODO Auto-generated method stub
		return cartDao.deletetoCart(cart_id);
	}
	@Override
	public List<Product> getDataProductAvailable() {
		// TODO Auto-generated method stub
		return productDao.getDataProductAvailable();
	}
	@Override
	public List<Product> tradeMarkFilter(String brand_id, String product_price, String product_size, String sort_product) {
		// TODO Auto-generated method stub
		return productDao.tradeMarkFilter(brand_id, product_price, product_size, sort_product);
	}
	@Override
	public List<ProductSize> productSize() {
		// TODO Auto-generated method stub
		return productSizeDao.productSize();
	}
}
