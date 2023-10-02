package com.firgurinshop.Services.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firgurinshop.Dao.ProductDao;

import com.firgurinshop.Entity.Product;


@Service
public class HomeServiceImplement implements IHomeService {
	@Autowired
	private ProductDao productDao;
	public List<Product> getDataProduct() {
		return productDao.getDataProduct();
	}


}
