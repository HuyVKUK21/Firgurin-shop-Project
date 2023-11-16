package com.firgurinshop.Services.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firgurinshop.Dao.BrandDao;
import com.firgurinshop.Dao.CategoryDao;
import com.firgurinshop.Dao.ProductDao;
import com.firgurinshop.Entity.Brand;
import com.firgurinshop.Entity.Category;
import com.firgurinshop.Entity.Product;


@Service
public class HomeServiceImplement implements IHomeService {
	@Autowired
	private ProductDao productDao;
	@Autowired
	private BrandDao brandDao;
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
}
