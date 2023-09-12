package com.firgurinshop.Services.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firgurinshop.Entity.Product;

@Service
public interface IHomeService {
@Autowired
public List<Product> getDataProduct();
}
