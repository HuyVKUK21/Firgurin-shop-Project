package com.firgurinshop.Services.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firgurinshop.Entity.Brand;
import com.firgurinshop.Entity.Cart;
import com.firgurinshop.Entity.Category;
import com.firgurinshop.Entity.Product;
import com.firgurinshop.Entity.ProductSize;


@Service
public interface IHomeService {
@Autowired
public List<Product> getDataProduct();

@Autowired
public List<Product> getDataProductAvailable();

@Autowired
public List<Product> getDataDetailProduct(String id);

@Autowired
public List<Category> getDataDetailCategory(String id);

@Autowired
public List<Brand> getDataDetailBrand(String id);
@Autowired
public List<Category> getCategory();

@Autowired
public List<Category> getDetailCategory(String id);


@Autowired
public List<Brand> getDetailBrand();

@Autowired
public List<Product> getDataDetailProductPortfolio(String id);


@Autowired
public List<Cart> getInfoCart(String user_id);
@Autowired
public int updateCart(String cart_id);

@Autowired
public int updateCartAdd(String cart_id);

@Autowired
public int deletetoCart(String cart_id);

@Autowired
public List<Product> tradeMarkFilter(String brand_id, String product_price, String product_size, String sort_product);

@Autowired
public List<ProductSize> productSize();
}




