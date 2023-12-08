package com.firgurinshop.Services.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.firgurinshop.Entity.Brand;
import com.firgurinshop.Entity.Cart;

@Service
public interface IHomeServiceAdmin {
	@Autowired
	public int addBrand(Brand brand);
	@Autowired
	public List<Brand> getDetailBrand();
	@Autowired
	public int updatestatusBrand(String brandId);
	
	@Autowired
	public int updatestatusBrandDeactivated(String brandId);
	
	@Autowired
	public List<Brand> getDataBrand(String id);
}
